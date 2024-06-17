import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../core/utils/logger.dart';
import '../../domain/entities/contact.dart';
import '../../domain/entities/invitation.dart';
import '../../domain/entities/room.dart';
import '../../domain/entities/video_call_user_update_info.dart';
import '../../domain/entities/video_frame.dart';
import '../../domain/errors/failure.dart';
import '../../domain/repositories/repo_outcome.dart';
import '../../domain/repositories/video_call_repository.dart';
import '../datasources/local/video_call_local_data_source.dart';
import '../datasources/remote/video_call_remote_data_source.dart';
import '../models/api/invitation_model.dart';
import '../models/api/room_model.dart';

const _tagName = 'VideoCallRepository';

class VideoCallRepositoryImpl implements VideoCallRepository {
  final VideoCallLocalDataSource _localDataSource;
  final VideoCallRemoteDataSource _remoteDataSource;
  RtcEngine? _engine;
  bool _isInitialized;

  VideoCallRepositoryImpl(this._localDataSource, this._remoteDataSource)
      : _isInitialized = false;

  @override
  Stream<RepoOutcome<VideoCallUserUpdateInfo>> get videoCallStatus =>
      _remoteDataSource.status.map((event) => Right(event));

  @override
  Future<RepoOutcome<RtcEngine>> init() async {
    final result = await [Permission.microphone, Permission.camera].request();
    if (result.containsValue(PermissionStatus.denied) ||
        result.containsValue(PermissionStatus.permanentlyDenied)) {
      return const Left(UnknownFailure());
    }

    if (_isInitialized) {
      Logger.print('Video engine already initialized!');
      return Right(_engine!);
    }

    Logger.print('Initializing video engine started...');

    try {
      _engine = createAgoraRtcEngine();
      _localDataSource.setEngine(_engine!);
      _remoteDataSource.setEngine(_engine!);
    } catch (error) {
      Logger.error(error, event: 'creating Agora RTC engine');
      return const Left(UnknownFailure());
    }

    try {
      final appId = await _remoteDataSource.getAppId();
      await _localDataSource.init(appId);
    } catch (error) {
      Logger.error(error, event: 'Initializing app id and local data source');
      return const Left(UnknownFailure());
    }

    try {
      await _remoteDataSource.init();
    } catch (error) {
      Logger.error(error, event: 'Initializing remote data source');
      return const Left(UnknownFailure());
    }

    try {
      _localDataSource.setObserver();
    } catch (error) {
      Logger.error(error, event: 'Initializing local data source observer');
      return const Left(UnknownFailure());
    }

    Logger.print('Initializing video engine success!');
    _isInitialized = true;
    return Right(_engine!);
  }

  @override
  Future<RepoOutcome<Room>> createRoom({required Contact contact}) async {
    try {
      final room = await _remoteDataSource.createRoom(contact);
      return Right(room.toEntity());
    } catch (error) {
      Logger.error(error, event: '(repository) create room failed!');
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<RepoOutcome<Unit>> joinRoom({required Room room}) async {
    try {
      await _remoteDataSource.joinRoom(room.roomId);

      return const Right(unit);
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<RepoOutcome<Unit>> leaveRoom({required Room room}) async {
    if (!_isInitialized) {
      Logger.print('Already leave room, no need redo');
      return const Right(unit);
    }

    try {
      _localDataSource.removeObserver();
    } catch (_) {
      return const Left(UnknownFailure());
    }

    try {
      await _remoteDataSource.leaveRoom(room.roomId);
      _isInitialized = false;

      Logger.print('Leave video room success!');
      return const Right(unit);
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  RepoOutcome<RtcEngine> get engine {
    if (!_isInitialized) {
      return const Left(UnknownFailure());
    }

    return Right(_engine!);
  }

  @override
  Stream<RepoOutcome<List<Invitation>>> get invitations =>
      _remoteDataSource.invitations.map((invitations) => Right(
          invitations.map((invitation) => invitation.toEntity()).toList()));

  @override
  Future<RepoOutcome<Unit>> flipCamera() async {
    try {
      await _remoteDataSource.flipCamera();
      return const Right(unit);
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<RepoOutcome<Unit>> muteAudio({required bool isMuted}) async {
    try {
      await _remoteDataSource.muteAudio(isMuted);
      return const Right(unit);
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<RepoOutcome<Unit>> muteVideo({required bool isMuted}) async {
    try {
      await _remoteDataSource.muteVideo(isMuted);
      return const Right(unit);
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  // @override
  // Future<RepoResponse<Unit>> updateRemoteUserStatus(
  //     {required Room invitation}) async {
  //   try {
  //     await _remoteDataSource.updateRemoteUserStatus(invitation);
  //     return const Right(unit);
  //   } catch (_) {
  //     return Left(UnknownFailure());
  //   }
  // }

  // @override
  // Stream<RepoResponse<SalingsapaVideoFrame>> get videoFrame =>
  //     _localDataSource.videoFrame.map((frame) => Right(frame.toEntity()));

  @override
  Future<RepoOutcome<Unit>> disableTakeSnapshot() async {
    try {
      await _remoteDataSource.disableTakeSnapshot();
      return const Right(unit);
    } catch (error) {
      Logger.error(
        error,
        event: 'disabling take snapshot',
        name: _tagName,
      );
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Future<RepoOutcome<Unit>> enableTakeSnapshot() async {
    try {
      await _remoteDataSource.enableTakeSnapshot();
      return const Right(unit);
    } catch (error) {
      Logger.error(
        error,
        event: 'disabling take snapshot',
        name: _tagName,
      );
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Stream<RepoOutcome<PhotoSnapshot>> get photoSnapshot =>
      _remoteDataSource.photoSnapshot.map((model) => Right(model.toEntity()));

  @override
  Future<RepoOutcome<Room>> acceptInvitation({
    required Invitation invitation,
  }) async {
    try {
      final model =
          await _remoteDataSource.acceptInvitation(invitation.invitationId);
      return Right(model.toEntity());
    } catch (error) {
      Logger.error(
        error,
        event: 'accepting invitation',
        name: _tagName,
      );
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Future<RepoOutcome<Unit>> rejectInvitation({
    required Invitation invitation,
  }) async {
    try {
      await _remoteDataSource.rejectInvitation(invitation.invitationId);
      return const Right(unit);
    } catch (error) {
      Logger.error(
        error,
        event: 'rejecting invitation',
        name: _tagName,
      );
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }
}
