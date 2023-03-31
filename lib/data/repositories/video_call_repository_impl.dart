import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/return_type.dart';
import 'package:salingsapa/data/models/video_call_invitation_model.dart';
import 'package:salingsapa/data/sources/video_call_local_data_source.dart';
import 'package:salingsapa/domain/entities/contact.dart';
import 'package:salingsapa/domain/entities/video_call_user_update_info.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

import '../../domain/entities/video_call_invitation.dart';
import '../sources/video_call_remote_data_source.dart';

class VideoCallRepositoryImpl implements VideoCallRepository {
  final VideoCallLocalDataSource _localDataSource;
  final VideoCallRemoteDataSource _remoteDataSource;
  late final RtcEngine _engine;
  bool _isInitialized;

  VideoCallRepositoryImpl(this._localDataSource, this._remoteDataSource)
      : _isInitialized = false;

  @override
  Stream<RepoResponse<VideoCallUserUpdateInfo>> get videoCallStatus =>
      _remoteDataSource.videoCallStatus.map((event) => Right(event));

  @override
  Future<RepoResponse<Unit>> init() async {
    final result = await [Permission.microphone, Permission.camera].request();
    if (result.containsValue(PermissionStatus.denied) ||
        result.containsValue(PermissionStatus.permanentlyDenied)) {
      return Left(UnknownFailure());
    }

    if (_isInitialized) {
      return const Right(unit);
    }

    try {
      _engine = createAgoraRtcEngine();
      _localDataSource.setEngine(_engine);
      _remoteDataSource.setEngine(_engine);
    } catch (_) {
      return Left(UnknownFailure());
    }

    try {
      final appId = await _remoteDataSource.getAppId();
      await _localDataSource.init(appId);
    } catch (_) {
      return Left(UnknownFailure());
    }

    try {
      await _remoteDataSource.init();
    } catch (_) {
      return Left(UnknownFailure());
    }

    _isInitialized = true;
    return const Right(unit);
  }

  @override
  Future<RepoResponse<VideoCallInvitation>> start(
      {required Contact contact}) async {
    try {
      _localDataSource.setObserver();
    } catch (_) {
      return Left(UnknownFailure());
    }

    try {
      final token = await _remoteDataSource.getToken();
      final invitation = await _remoteDataSource.start(
        token,
        contact,
      );

      return Right(invitation.toEntity());
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<VideoCallInvitation>> join(
      {required VideoCallInvitation invitation}) async {
    try {
      _localDataSource.setObserver();
    } catch (_) {
      return Left(UnknownFailure());
    }

    try {
      final token = await _remoteDataSource.getToken();
      final model = await _remoteDataSource.join(
        token,
        invitation,
      );

      return Right(model.toEntity());
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<Unit>> leave(
      {required VideoCallInvitation invitation}) async {
    try {
      _localDataSource.removeObserver();
    } catch (_) {
      return Left(UnknownFailure());
    }

    try {
      await _remoteDataSource.leave(invitation);
      return const Right(unit);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  RepoResponse<RtcEngine> get engine {
    if (!_isInitialized) {
      return Left(UnknownFailure());
    }

    return Right(_engine);
  }

  @override
  Stream<RepoResponse<List<VideoCallInvitation>>> get invitations =>
      _remoteDataSource.invitations.map((invitations) =>
          Right(invitations.map((e) => e.toEntity()).toList()));

  @override
  Future<RepoResponse<Unit>> flipCamera() async {
    try {
      await _remoteDataSource.flipCamera();
      return const Right(unit);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<Unit>> muteAudio({required bool isMuted}) async {
    try {
      await _remoteDataSource.muteAudio(isMuted);
      return const Right(unit);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<Unit>> muteVideo({required bool isMuted}) async {
    try {
      await _remoteDataSource.muteVideo(isMuted);
      return const Right(unit);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<Unit>> updateRemoteUserStatus(
      {required VideoCallInvitation invitation}) async {
    try {
      await _remoteDataSource.updateRemoteUserStatus(invitation);
      return const Right(unit);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }
}
