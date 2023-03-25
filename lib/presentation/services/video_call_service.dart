import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/utils/logger.dart';

import '../../core/interfaces/return_type.dart';

abstract class VideoCallService {
  Future<RepoResponse<Unit>> init();

  Future<RepoResponse<Unit>> start();
}

class VideoCallServiceImpl implements VideoCallService {
  final String _agoraAppId;
  RtcEngine? _rtcEngine;
  int? _remoteUid;
  bool? _isJoined;
  String _channelName = '';

  VideoCallServiceImpl(this._agoraAppId);

  @override
  Future<RepoResponse<Unit>> init() async {
    final permissions = [Permission.microphone, Permission.camera];
    final result = await permissions.request();
    if (result.containsValue(PermissionStatus.denied) ||
        result.containsValue(PermissionStatus.permanentlyDenied)) {
      return Left(PermissionFailure(Right(permissions)));
    }

    _rtcEngine = createAgoraRtcEngine();
    await _rtcEngine?.initialize(RtcEngineContext(appId: _agoraAppId));

    await _rtcEngine?.enableVideo();

    return const Right(unit);
  }

  @override
  Future<RepoResponse<Unit>> start() async {
    if (_rtcEngine == null) {
      return Left(UnknownFailure());
    }

    _rtcEngine?.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          Logger.print(
              "Local user uid:${connection.localUid} joined the channel");
          _isJoined = true;
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          Logger.print('Remote user uid:$remoteUid joined the channel');
          _remoteUid = remoteUid;
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          Logger.print("Remote user uid:$remoteUid left the channel");
          _remoteUid = null;
        },
      ),
    );

    return const Right(unit);
  }
}
