import 'dart:math';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
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

  Stream<VideoCallUserUpdateInfo> get videoCallStatus;

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

  VideoCallRemoteDataSourceImpl(
    this._uuid,
    this._firestore,
    this._auth,
    this._remoteConfig,
  ) : _streamController = BehaviorSubject();

  @override
  Future<void> init() async {
    try {
      // Register the event handler
      _rtcEngine.registerEventHandler(
        RtcEngineEventHandler(
          onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
            Logger.print(
                'Local user with uid ${connection.localUid} has joined to the channel!');
            const info = VideoCallUserUpdateInfo(
                status: VideoCallStatus.localUserJoined);
            _streamController.sink.add(info);
          },
          onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
            Logger.print('User with uid $remoteUid has joined to the channel!');
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
        ),
      );
      Logger.print('Initialization success!');
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

      await _rtcEngine.enableAudio();
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

  Future<void> z() async {
    AudioFrameObserver audioFrameObserver = AudioFrameObserver(
        onRecordAudioFrame: (String channelId, AudioFrame audioFrame) {
      // Gets the captured audio frame
    }, onPlaybackAudioFrame: (String channelId, AudioFrame audioFrame) {
      // Gets the audio frame for playback
      Logger.print('[onPlaybackAudioFrame] audioFrame: ${audioFrame.toJson()}');
    });

    VideoFrameObserver videoFrameObserver = VideoFrameObserver(
        onCaptureVideoFrame: (VideoFrame videoFrame) {
      // The video data that this callback gets has not been pre-processed
      // After pre-processing, you can send the processed video data back
      // to the SDK through this callback
      Logger.print('[onCaptureVideoFrame] videoFrame: ${videoFrame.toJson()}');
    }, onRenderVideoFrame:
            (String channelId, int remoteUid, VideoFrame videoFrame) {
      // Occurs each time the SDK receives a video frame sent by the remote user.
      // In this callback, you can get the video data before encoding.
      // You then process the data according to your particular scenario.
    });

    // Set the format of raw audio data.
    int sampleRate = 16000, sampleNumOfChannel = 1, samplesPerCall = 1024;

    _rtcEngine.setRecordingAudioFrameParameters(
        sampleRate: sampleRate,
        channel: sampleNumOfChannel,
        mode: RawAudioFrameOpModeType.rawAudioFrameOpModeReadWrite,
        samplesPerCall: samplesPerCall);
    _rtcEngine.setPlaybackAudioFrameParameters(
        sampleRate: sampleRate,
        channel: sampleNumOfChannel,
        mode: RawAudioFrameOpModeType.rawAudioFrameOpModeReadWrite,
        samplesPerCall: samplesPerCall);
    _rtcEngine.setMixedAudioFrameParameters(
        sampleRate: sampleRate,
        channel: sampleNumOfChannel,
        samplesPerCall: samplesPerCall);

    _rtcEngine.getMediaEngine().registerAudioFrameObserver(audioFrameObserver);
    _rtcEngine.getMediaEngine().registerVideoFrameObserver(videoFrameObserver);
  }

  @override
  Stream<VideoCallUserUpdateInfo> get videoCallStatus =>
      _streamController.stream;

  @override
  Future<String> getToken() async {
    try {
      await _remoteConfig.fetchAndActivate();
      final token = _remoteConfig.getString(agoraTokenKey);
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
}
