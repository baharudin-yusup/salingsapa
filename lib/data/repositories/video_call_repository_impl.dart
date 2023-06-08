import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/return_type.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/contact.dart';
import '../../domain/entities/video_call_invitation.dart';
import '../../domain/entities/video_call_user_update_info.dart';
import '../../domain/entities/video_frame.dart';
import '../../domain/repositories/video_call_repository.dart';
import '../models/video_call_invitation_model.dart';
import '../sources/video_call_local_data_source.dart';
import '../sources/video_call_remote_data_source.dart';

const _tagName = 'VideoCallRepository';

class VideoCallRepositoryImpl implements VideoCallRepository {
  final VideoCallLocalDataSource _localDataSource;
  final VideoCallRemoteDataSource _remoteDataSource;
  late final RtcEngine _engine;
  bool _isInitialized;

  VideoCallRepositoryImpl(this._localDataSource, this._remoteDataSource)
      : _isInitialized = false;

  @override
  Stream<RepoResponse<VideoCallUserUpdateInfo>> get videoCallStatus =>
      _remoteDataSource.status.map((event) => Right(event));

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

    try {
      _localDataSource.setObserver();
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

  // @override
  // Stream<RepoResponse<SalingsapaVideoFrame>> get videoFrame =>
  //     _localDataSource.videoFrame.map((frame) => Right(frame.toEntity()));

  @override
  Future<RepoResponse<Unit>> disableTakeSnapshot() async {
    try {
      await _remoteDataSource.disableTakeSnapshot();
      return const Right(unit);
    } catch (error) {
      Logger.error(
        error,
        event: 'disabling take snapshot',
        name: _tagName,
      );
      return Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<Unit>> enableTakeSnapshot() async {
    try {
      await _remoteDataSource.enableTakeSnapshot();
      return const Right(unit);
    } catch (error) {
      Logger.error(
        error,
        event: 'disabling take snapshot',
        name: _tagName,
      );
      return Left(UnknownFailure());
    }
  }

  @override
  Stream<RepoResponse<PhotoSnapshot>> get photoSnapshot =>
      _remoteDataSource.photoSnapshot.map((model) => Right(model.toEntity()));
}
