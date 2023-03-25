import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/return_type.dart';
import 'package:salingsapa/data/sources/video_call_local_data_source.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

import '../../domain/entities/video_call.dart';
import '../sources/video_call_remote_data_source.dart';

class VideoCallRepositoryImpl implements VideoCallRepository {
  final VideoCallLocalDataSource _localDataSource;
  final VideoCallRemoteDataSource _remoteDataSource;

  VideoCallRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Stream get videoCallStatus => _remoteDataSource.videoCallStatus;

  @override
  Future<RepoResponse<Unit>> init() async {
    final result = await [Permission.microphone, Permission.camera].request();
    if (result.containsValue(PermissionStatus.denied) ||
        result.containsValue(PermissionStatus.permanentlyDenied)) {
      return Left(UnknownFailure());
    }

    try {
      final appId = _localDataSource.getAppId();
      await _remoteDataSource.init(appId);
    } catch (_) {
      return Left(UnknownFailure());
    }

    return const Right(unit);
  }

  @override
  Future<RepoResponse<Unit>> start({required String channelName}) async {
    try {
      final token = await _remoteDataSource.getToken();
      await _remoteDataSource.join(
        token,
        channelName,
      );

      return const Right(unit);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<Unit>> join({required VideoCall videoCall}) async {
    try {
      final token = await _remoteDataSource.getToken();
      await _remoteDataSource.join(
        token,
        videoCall.channelName,
      );

      return const Right(unit);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<Unit>> leave() async {
    try {
      await _remoteDataSource.leave();
      return const Right(unit);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }
}
