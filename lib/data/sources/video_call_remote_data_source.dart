import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/contact.dart';
import '../../domain/entities/video_call_invitation.dart';
import '../../domain/entities/video_call_status.dart';
import '../../domain/entities/video_call_user_update_info.dart';
import '../extensions/extensions.dart';
import '../models/video_call_invitation_model.dart';
import '../models/video_frame_model.dart';

const _tagName = 'VideoCallRemoteDataSource';

abstract class VideoCallRemoteDataSource {
  void setEngine(RtcEngine engine);

  Future<void> init();

  Future<VideoCallInvitationModel> start(
    String token,
    Contact contact,
  );

  Future<String> getToken();

  Future<String> getAppId();

  Future<VideoCallInvitationModel> join(
    String token,
    VideoCallInvitation invitation,
  );

  Future<void> updateRemoteUserStatus(VideoCallInvitation invitation);

  Future<void> leave(VideoCallInvitation invitation);

  Future<void> flipCamera();

  Future<void> muteAudio(bool mute);

  Future<void> muteVideo(bool mute);

  Future<void> enableTakeSnapshot();

  Future<void> disableTakeSnapshot();

  Stream<VideoCallUserUpdateInfo> get status;

  Stream<PhotoSnapshotModel> get photoSnapshot;

  Stream<List<VideoCallInvitationModel>> get invitations;

  RtcEngine? get engine;
}

const agoraTokenKey = 'agoraTestToken';
const agoraAppIdKey = 'agoraAppId';

class VideoCallRemoteDataSourceImpl implements VideoCallRemoteDataSource {
  late RtcEngine _rtcEngine;

  final BehaviorSubject<VideoCallUserUpdateInfo> _streamController;
  final Uuid _uuid;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseRemoteConfig _remoteConfig;

  Timer? _takeSnapshotTimer;
  Directory? _snapshotDir;
  final BehaviorSubject<PhotoSnapshotModel> _photoSnapshotController;

  VideoCallRemoteDataSourceImpl(
    this._uuid,
    this._firestore,
    this._auth,
    this._remoteConfig,
  )   : _streamController = BehaviorSubject(),
        _photoSnapshotController = BehaviorSubject();

  @override
  Future<void> init() async {
    try {
      // Init snapshot directory
      final tempDir = (await getTemporaryDirectory());
      _snapshotDir = await Directory('${tempDir.path}/img_snapshot')
          .create(recursive: true);

      // Register the event handler
      _rtcEngine.registerEventHandler(
        RtcEngineEventHandler(
          onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
            Logger.print(
              'Local user with uid ${connection.localUid} has joined to the channel!',
              name: _tagName,
            );
            const info = VideoCallUserUpdateInfo(
                status: VideoCallStatus.localUserJoined);
            _streamController.sink.add(info);
          },
          onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
            Logger.print(
              'User with uid $remoteUid has joined to the channel!',
              name: _tagName,
            );
            final info = VideoCallUserUpdateInfo(
              status: VideoCallStatus.remoteUserJoined,
              remoteUid: remoteUid,
            );
            _streamController.sink.add(info);
          },
          onUserOffline: (RtcConnection connection, int remoteUid,
              UserOfflineReasonType reason) {
            final info = VideoCallUserUpdateInfo(
              status: VideoCallStatus.remoteUserLeave,
              remoteUid: remoteUid,
            );
            _streamController.sink.add(info);
          },
          onSnapshotTaken: _handleSnapshotTaken,
        ),
      );
      Logger.print(
        'Initialization success!',
        name: _tagName,
      );
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<VideoCallInvitationModel> start(
    String token,
    Contact contact,
  ) async {
    try {
      final currentUser = _auth.currentUser;

      if (currentUser == null) {
        throw ServerException(type: ServerExceptionType.unauthorized);
      }

      final uid = _generateUid();
      final channelName = _generateChannelName();
      const options = ChannelMediaOptions(
        clientRoleType: ClientRoleType.clientRoleBroadcaster,
        channelProfile: ChannelProfileType.channelProfileCommunication,
      );

      /// TODO: Remove this
      await _rtcEngine.disableAudio();
      // await _rtcEngine.enableAudio();
      await _rtcEngine.enableVideo();
      await _rtcEngine.joinChannel(
        token: token,
        channelId: channelName,
        options: options,
        uid: uid,
      );

      final invitationModel = VideoCallInvitationModel(
        invitationId: _generateInvitationId(),
        callerPhoneNumber: currentUser.phoneNumber!,
        targetPhoneNumber: contact.phoneNumber.toFormattedPhoneNumber(),
        channelName: channelName,
        createdAt: DateTime.now(),
        validUntil: DateTime.now().add(const Duration(minutes: 10)),
        isValid: true,
        invitationType: VideoCallInvitationTypeModel.call.index,
        isTargetJoined: false,
        isCallerJoined: true,
        callerUid: uid,
        targetUid: 0,
      );
      await _invitationCollection.add(invitationModel.toJson());

      return invitationModel;
    } on ServerException catch (error) {
      Logger.error(error, event: 'starting video call');
      rethrow;
    } catch (error) {
      Logger.error(error, event: 'starting video call');
      throw ServerException();
    }
  }

  @override
  Future<VideoCallInvitationModel> join(
    String token,
    VideoCallInvitation invitation,
  ) async {
    try {
      final documentSnapshot =
          await _getCloudInvitationModel(invitation.invitationId).get();

      if (documentSnapshot.size != 1) {
        throw ServerException();
      }

      final uid = _generateUid();
      const options = ChannelMediaOptions(
        clientRoleType: ClientRoleType.clientRoleBroadcaster,
        channelProfile: ChannelProfileType.channelProfileCommunication,
      );
      await _rtcEngine.enableAudio();
      await _rtcEngine.enableVideo();
      await _rtcEngine.joinChannel(
        token: token,
        channelId: invitation.channelName,
        options: options,
        uid: uid,
      );

      final queryDocumentSnapshot = documentSnapshot.docs[0];
      final documentRef = queryDocumentSnapshot.reference;
      await documentRef.update({
        'isValid': false,
        'targetUid': uid,
      });
      final model = await _updateUserJoinedStatus(invitation, true);
      return model.copyWith(targetUid: uid);
    } on ServerException {
      rethrow;
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<void> leave(VideoCallInvitation invitation) async {
    try {
      await _rtcEngine.disableVideo();
      await _rtcEngine.disableAudio();
      await _rtcEngine.leaveChannel();

      final snapshot =
          await _getCloudInvitationModel(invitation.invitationId).get();

      if (snapshot.size != 1) {
        throw ServerException();
      }
      final documentRef = snapshot.docs.first.reference;
      await documentRef.update({'isValid': false});
      await _updateUserJoinedStatus(invitation, false);
    } on ServerException {
      rethrow;
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Stream<VideoCallUserUpdateInfo> get status => _streamController.stream;

  @override
  Future<String> getToken() async {
    try {
      await _remoteConfig.fetchAndActivate();
      // TODO: Edit this
      final base64Token = _remoteConfig.getString(agoraTokenKey);
      final token = utf8.decode(base64.decode(base64Token));
      const x =
          '007eJxTYFh+PmzNZ6O9WRIBZ+TFd1xo3ftuh4MNC/f0xu8XfqkkvlVVYEg0NDa3NEtMS7RMNTBJNTJJMk0zNTU1SUwyNzQzSE40+abfkNIQyMigfPofAyMUgvjcDCWpxSXOGYl5eak5DAwAo60jtA==';
      Logger.print('is token valid? ${token == x}', name: _tagName);
      return token;
    } catch (error) {
      Logger.error(error, event: 'getting agora token');
      throw ServerException();
    }
  }

  @override
  RtcEngine? get engine => _rtcEngine;

  @override
  Stream<List<VideoCallInvitationModel>> get invitations {
    final user = _auth.currentUser;

    if (user == null) {
      return const Stream.empty();
    }

    final targetPhoneNumber = user.phoneNumber!.toFormattedPhoneNumber();
    Logger.print('targetPhoneNumber: $targetPhoneNumber');
    return _invitationCollection
        .where('targetPhoneNumber', isEqualTo: targetPhoneNumber)
        .orderBy('createdAt')
        .snapshots()
        .map((snapshot) {
      final invitations = <VideoCallInvitationModel>[];

      for (var element in snapshot.docs.reversed) {
        final json = element.data();
        try {
          invitations.add(VideoCallInvitationModel.fromJson(json));
        } catch (error) {
          Logger.error(error,
              event: 'mapping video call invitations. data: $json');
        }
      }

      return invitations;
    });
  }

  @override
  Future<void> flipCamera() async {
    try {
      await _rtcEngine.switchCamera();
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<void> muteAudio(bool mute) async {
    try {
      if (mute) {
        await _rtcEngine.disableAudio();
      } else {
        await _rtcEngine.enableAudio();
      }
      await _rtcEngine.muteLocalAudioStream(mute);
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<void> muteVideo(bool mute) async {
    try {
      await _rtcEngine.muteLocalVideoStream(mute);
    } catch (_) {
      throw ServerException();
    }
  }

  Future<VideoCallInvitationModel> _updateUserJoinedStatus(
      VideoCallInvitation invitation, bool isJoined) async {
    try {
      final currentUser = _auth.currentUser;

      if (currentUser == null) {
        throw ServerException();
      }
      final phoneNumber = currentUser.phoneNumber?.toFormattedPhoneNumber();
      if (phoneNumber == null) {
        throw ServerException();
      }

      final queryResult =
          await _getCloudInvitationModel(invitation.invitationId).get();

      if (queryResult.size != 1) {
        throw ServerException();
      }

      final document = queryResult.docs[0];
      final model = VideoCallInvitationModel.fromJson(document.data());

      if (model.callerPhoneNumber == phoneNumber) {
        Logger.print('Update isCallerJoined value to $isJoined');
        await document.reference.update({'isCallerJoined': isJoined});
        return model.copyWith(isCallerJoined: isJoined);
      }

      if (model.targetPhoneNumber == phoneNumber) {
        Logger.print('Update isTargetJoined value to $isJoined');
        await document.reference.update({'isTargetJoined': isJoined});
        return model.copyWith(isTargetJoined: isJoined);
      }

      throw ServerException();
    } catch (error) {
      Logger.error(error, event: 'updating remote user status');
      throw ServerException();
    }
  }

  String _generateChannelName() => 'testChannel';

  String _generateInvitationId() => _uuid.v4();

  CollectionReference<Map<String, dynamic>> get _invitationCollection =>
      _firestore.collection('invitations');

  Query<Map<String, dynamic>> _getCloudInvitationModel(String invitationId) {
    return _invitationCollection.where('invitationId', isEqualTo: invitationId);
  }

  int _generateUid() => Random.secure().nextInt(pow(2, 16).toInt());

  @override
  Future<void> updateRemoteUserStatus(VideoCallInvitation invitation) async {
    // final model = await _updateUserJoinedStatus(invitation, true);
    //
    // if (model.isTargetJoined && model.isCallerJoined) {
    //   const info = VideoCallUserUpdateInfo(
    //     status: VideoCallStatus.remoteUserJoined,
    //   );
    //   _streamController.sink.add(info);
    // }
  }

  @override
  void setEngine(RtcEngine engine) => _rtcEngine = engine;

  @override
  Future<String> getAppId() async {
    try {
      await _remoteConfig.fetchAndActivate();
      final appId = _remoteConfig.getString(agoraAppIdKey);
      return appId;
    } catch (error) {
      Logger.error(error, event: 'getting agora token');
      throw ServerException();
    }
  }

  void _handleSnapshotTaken(RtcConnection connection, int uid, String filePath,
      int width, int height, int errCode) {
    if (errCode != 0) {
      Logger.error(
        'error code: $errCode',
        event: 'taking snapshot',
        name: _tagName,
      );
      return;
    }
    final model = PhotoSnapshotModel(filePath);
    _photoSnapshotController.sink.add(model);
  }

  @override
  Future<void> disableTakeSnapshot() async {
    _takeSnapshotTimer?.cancel();
  }

  @override
  Future<void> enableTakeSnapshot() async {
    _takeSnapshotTimer =
        Timer.periodic(const Duration(milliseconds: 1750), (timer) async {
      try {
        final filePath = _generateSnapshotFilePath();
        await _rtcEngine.takeSnapshot(
          uid: 0,
          filePath: filePath,
        );
      } catch (error) {
        Logger.error(
          error,
          event: 'enabling periodic snapshot',
          name: _tagName,
        );
      }
    });
  }

  String _generateSnapshotFilePath() {
    final snapshotDir = _snapshotDir;
    if (snapshotDir == null) {
      throw FeatureException();
    }
    const imgExtension = 'jpg';
    final imgName = _uuid.v1();
    return '${snapshotDir.path}/$imgName.$imgExtension';
  }

  @override
  Stream<PhotoSnapshotModel> get photoSnapshot =>
      _photoSnapshotController.stream;
}
