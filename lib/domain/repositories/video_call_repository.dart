import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';

import '../../core/interfaces/return_type.dart';
import '../entities/contact.dart';
import '../entities/room.dart';
import '../entities/video_call_user_update_info.dart';
import '../entities/video_frame.dart';

abstract class VideoCallRepository {
  Future<RepoResponse<RtcEngine>> init();

  Future<RepoResponse<Room>> createRoom({required Contact contact});

  Future<RepoResponse<Unit>> joinRoom({required Room room});

  // Future<RepoResponse<Unit>> updateRemoteUserStatus({required Room invitation});

  Future<RepoResponse<Unit>> leaveRoom({required Room room});

  Future<RepoResponse<Unit>> flipCamera();

  Future<RepoResponse<Unit>> muteAudio({required bool isMuted});

  Future<RepoResponse<Unit>> muteVideo({required bool isMuted});

  Stream<RepoResponse<VideoCallUserUpdateInfo>> get videoCallStatus;

  Stream<RepoResponse<List<Room>>> get invitations;

  // Stream<RepoResponse<SalingsapaVideoFrame>> get videoFrame;

  RepoResponse<RtcEngine> get engine;

  /// Photo snapshot usecase
  Future<RepoResponse<Unit>> enableTakeSnapshot();

  Future<RepoResponse<Unit>> disableTakeSnapshot();

  Stream<RepoResponse<PhotoSnapshot>> get photoSnapshot;
}
