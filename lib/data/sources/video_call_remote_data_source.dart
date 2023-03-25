import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:rxdart/rxdart.dart';
import 'package:salingsapa/core/errors/exceptions.dart';
import 'package:salingsapa/domain/entities/video_call_status.dart';

abstract class VideoCallRemoteDataSource {
  Future<void> init(String appId);

  Future<void> start(
    String token,
    String channelName,
  );

  Future<String> getToken();

  Future<void> join(
    String token,
    String channelName,
  );

  Future<void> leave();

  Stream<VideoCallStatus> get videoCallStatus;
}

class VideoCallRemoteDataSourceImpl implements VideoCallRemoteDataSource {
  late RtcEngine _rtcEngine;

  final BehaviorSubject<VideoCallStatus> _streamController;

  VideoCallRemoteDataSourceImpl() : _streamController = BehaviorSubject();

  @override
  Future<void> init(String appId) async {
    try {
      _rtcEngine = createAgoraRtcEngine();
      await _rtcEngine.initialize(RtcEngineContext(appId: appId));

      await _rtcEngine.enableVideo();

      // Register the event handler
      _rtcEngine.registerEventHandler(
        RtcEngineEventHandler(
          onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
            _streamController.sink.add(VideoCallStatus.localUserJoined);
          },
          onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
            _streamController.sink.add(VideoCallStatus.remoteUserJoined);
          },
          onUserOffline: (RtcConnection connection, int remoteUid,
              UserOfflineReasonType reason) {
            _streamController.sink.add(VideoCallStatus.remoteUserLeave);
          },
        ),
      );
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<void> join(
    String token,
    String channelName,
  ) async {
    try {
      // Set channel options including the client role and channel profile
      ChannelMediaOptions options = const ChannelMediaOptions(
        clientRoleType: ClientRoleType.clientRoleBroadcaster,
        channelProfile: ChannelProfileType.channelProfileCommunication,
      );

      await _rtcEngine.joinChannel(
        token: token,
        channelId: channelName,
        options: options,
        uid: 1,
      );
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<void> leave() async {
    try {
      await _rtcEngine.leaveChannel();
      _streamController.sink.add(VideoCallStatus.localUserLeave);
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<void> start(
    String token,
    String channelName,
  ) async {
    try {
      // Set channel options including the client role and channel profile
      ChannelMediaOptions options = const ChannelMediaOptions(
        clientRoleType: ClientRoleType.clientRoleBroadcaster,
        channelProfile: ChannelProfileType.channelProfileCommunication,
      );

      await _rtcEngine.joinChannel(
        token: token,
        channelId: channelName,
        options: options,
        uid: 0,
      );
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Stream<VideoCallStatus> get videoCallStatus => _streamController.stream;

  @override
  Future<String> getToken() async {
    return '007eJxTYHiUEme5O8cicNaBJzc6yi9EJ2yR7auc/WJiW+RS+yeLQ9coMCQaGptbmiWmJVqmGpikGpkkmaaZmpqaJCaZG5oZJCeazAniSGkIZGSYJTeVkZEBAkF8foayzJTU/PjkxJyc+JLU4hIGBgBMUCTu';
  }
}
