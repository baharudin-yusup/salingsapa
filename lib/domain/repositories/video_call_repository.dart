import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';

import '../entities/contact.dart';
import '../entities/invitation.dart';
import '../entities/room.dart';
import '../entities/video_call_user_update_info.dart';
import '../entities/video_frame.dart';
import 'repo_outcome.dart';

abstract class VideoCallRepository {
  Future<RepoOutcome<RtcEngine>> init();

  Future<RepoOutcome<Room>> createRoom({required Contact contact});

  Future<RepoOutcome<Unit>> joinRoom({required Room room});

  Future<RepoOutcome<Unit>> leaveRoom({required Room room});

  Future<RepoOutcome<Room>> acceptInvitation({required Invitation invitation});

  Future<RepoOutcome<Unit>> rejectInvitation({required Invitation invitation});

  Future<RepoOutcome<Unit>> flipCamera();

  Future<RepoOutcome<Unit>> muteAudio({required bool isMuted});

  Future<RepoOutcome<Unit>> muteVideo({required bool isMuted});

  Stream<RepoOutcome<VideoCallUserUpdateInfo>> get videoCallStatus;

  Stream<RepoOutcome<List<Invitation>>> get invitations;

  RepoOutcome<RtcEngine> get engine;

  /// Photo snapshot usecase
  Future<RepoOutcome<Unit>> enableTakeSnapshot();

  Future<RepoOutcome<Unit>> disableTakeSnapshot();

  Stream<RepoOutcome<PhotoSnapshot>> get photoSnapshot;
}
