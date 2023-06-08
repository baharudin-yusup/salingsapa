import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';

import '../../core/interfaces/return_type.dart';
import '../entities/contact.dart';
import '../entities/video_call_invitation.dart';
import '../entities/video_call_user_update_info.dart';
import '../entities/video_frame.dart';

abstract class VideoCallRepository {
  Future<RepoResponse<Unit>> init();

  Future<RepoResponse<VideoCallInvitation>> start({required Contact contact});

  Future<RepoResponse<VideoCallInvitation>> join(
      {required VideoCallInvitation invitation});

  Future<RepoResponse<Unit>> updateRemoteUserStatus(
      {required VideoCallInvitation invitation});

  Future<RepoResponse<Unit>> leave({required VideoCallInvitation invitation});

  Future<RepoResponse<Unit>> flipCamera();

  Future<RepoResponse<Unit>> muteAudio({required bool isMuted});

  Future<RepoResponse<Unit>> muteVideo({required bool isMuted});

  Stream<RepoResponse<VideoCallUserUpdateInfo>> get videoCallStatus;

  Stream<RepoResponse<List<VideoCallInvitation>>> get invitations;

  // Stream<RepoResponse<SalingsapaVideoFrame>> get videoFrame;

  RepoResponse<RtcEngine> get engine;

  /// Photo snapshot usecase
  Future<RepoResponse<Unit>> enableTakeSnapshot();

  Future<RepoResponse<Unit>> disableTakeSnapshot();

  Stream<RepoResponse<PhotoSnapshot>> get photoSnapshot;
}
