import 'dart:async';
import 'dart:convert';
import 'dart:io';

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
import '../../domain/entities/invitation.dart';
import '../../domain/entities/video_call_status.dart';
import '../../domain/entities/video_call_user_update_info.dart';
import '../constants/firestore_constant.dart';
import '../extensions/extensions.dart';
import '../models/apis/create_room_request.dart';
import '../models/room_model.dart';
import '../models/video_frame_model.dart';
import 'api_service.dart';

const _tagName = 'VideoCallRemoteDataSource';

abstract class VideoCallRemoteDataSource {
  void setEngine(RtcEngine engine);

  Future<void> init();

  String getUserId();

  Future<RoomModel> createRoom(Contact contact);

  Future<void> joinRoom(String roomId);

  Future<void> leaveRoom(String roomId);

  Future<String> getAppId();

  Future<void> flipCamera();

  Future<void> muteAudio(bool mute);

  Future<void> muteVideo(bool mute);

  Future<void> enableTakeSnapshot();

  Future<void> disableTakeSnapshot();

  Stream<VideoCallUserUpdateInfo> get status;

  Stream<PhotoSnapshotModel> get photoSnapshot;

  Stream<List<Invitation>> get rooms;

  RtcEngine? get engine;
}

const agoraTokenKey = 'agoraTestToken';
const agoraAppIdKey = 'agoraAppId';

class VideoCallRemoteDataSourceImpl implements VideoCallRemoteDataSource {
  RtcEngine? _rtcEngine;

  RtcEngine get _engine {
    if (_rtcEngine == null) {
      throw GeneralException();
    }

    return _rtcEngine!;
  }

  final BehaviorSubject<VideoCallUserUpdateInfo> _streamController;
  final Uuid _uuid;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseRemoteConfig _remoteConfig;
  final ApiService _apiService;

  Timer? _takeSnapshotTimer;
  Directory? _snapshotDir;
  final BehaviorSubject<PhotoSnapshotModel> _photoSnapshotController;

  VideoCallRemoteDataSourceImpl(
    this._uuid,
    this._firestore,
    this._auth,
    this._remoteConfig,
    this._apiService,
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
      _engine.registerEventHandler(
        RtcEngineEventHandler(
          onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
            Logger.print(
              'Local user with uid ${connection.localUid} has joined to the channel!',
              name: _tagName,
            );
            final info = VideoCallLocalUserUpdateInfo(
              status: VideoCallStatus.joined,
              uid: connection.localUid,
            );
            _streamController.sink.add(info);
          },
          onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
            Logger.print(
              'User with uid $remoteUid has joined to the channel!',
              name: _tagName,
            );
            final info = VideoCallRemoteUserUpdateInfo(
              status: VideoCallStatus.joined,
              uid: remoteUid,
            );
            _streamController.sink.add(info);
          },
          onUserOffline: (RtcConnection connection, int remoteUid,
              UserOfflineReasonType reason) {
            final info = VideoCallRemoteUserUpdateInfo(
              status: VideoCallStatus.leave,
              uid: remoteUid,
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
  String getUserId() {
    // Get current user id
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        throw ServerException(type: ServerExceptionType.unauthorized);
      }
      return currentUser.uid;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<RoomModel> createRoom(Contact contact) async {
    // Create room and generate token
    final request = CreateRoomRequest(phoneNumbers: [
      contact.phoneNumber.toFormattedPhoneNumber(),
    ]);
    final response = await _apiService.createRoom(request);
    return response.data.room;
  }

  @override
  Future<void> joinRoom(String roomId) async {
    Logger.print('joining room $roomId started...');
    // Join room and generate token
    final response = await _apiService.joinRoom(roomId);
    final token = response.data.token;

    // Start the streaming
    try {
      const options = ChannelMediaOptions(
        clientRoleType: ClientRoleType.clientRoleBroadcaster,
        channelProfile: ChannelProfileType.channelProfileCommunication,
      );

      /// TODO: Remove this
      await _engine.disableAudio();
      // await _rtcEngine.enableAudio();
      await _engine.enableVideo();
      await _engine.joinChannelWithUserAccount(
        token: token,
        channelId: roomId,
        userAccount: getUserId(),
        options: options,
      );
    } on ServerException catch (error) {
      Logger.error(error, event: 'starting the streaming');
      rethrow;
    } catch (error) {
      Logger.error(error, event: 'starting the streaming');
      throw GeneralException();
    }
  }

  @override
  Future<void> leaveRoom(String roomId) async {
    // Leave the room
    await _apiService.leaveRoom(roomId);

    // Leave the agora streaming
    try {
      await _engine.disableVideo();
      await _engine.disableAudio();
      await _engine.leaveChannel();
      await _engine.release();
    } on ServerException {
      rethrow;
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Stream<VideoCallUserUpdateInfo> get status => _streamController.stream;

  @override
  RtcEngine? get engine => _engine;

  @override
  Stream<List<Invitation>> get rooms {
    final user = _auth.currentUser;

    if (user == null) {
      return const Stream.empty();
    }

    final phoneNumber = user.phoneNumber!.toFormattedPhoneNumber();
    return _roomCollection
        .where(FirestoreRoomConstant.invitedPhoneNumbers,
            arrayContains: phoneNumber)
        .orderBy(FirestoreConstant.createdAtKey, descending: true)
        .snapshots()
        .map((snapshot) {
      // TODO: Fix this
      final invitations = <Invitation>[];
      for (var doc in snapshot.docs) {
        try {
          final room = RoomModel.fromFirebase(doc.data());
          invitations.add(Invitation(
            room: room.toEntity(),
            callerContact: null,
            shouldPlayRingtone: room.hostId != user.uid,
          ));
        } catch (error) {
          Logger.error(error, event: 'mapping video call rooms. data: $json');
        }
      }

      return invitations;
    });
  }

  @override
  Future<void> flipCamera() async {
    try {
      await _engine.switchCamera();
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<void> muteAudio(bool mute) async {
    try {
      if (mute) {
        await _engine.disableAudio();
        Logger.print('mute audio success!');
      } else {
        await _engine.enableAudio();
        Logger.print('enable audio success!');
      }
      await _engine.muteLocalAudioStream(mute);
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<void> muteVideo(bool mute) async {
    try {
      await _engine.muteLocalVideoStream(mute);
    } catch (_) {
      throw ServerException();
    }
  }

  CollectionReference<Map<String, dynamic>> get _roomCollection =>
      _firestore.collection('rooms');

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
        await _engine.takeSnapshot(
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
