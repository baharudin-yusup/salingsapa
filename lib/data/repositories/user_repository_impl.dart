import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/return_type.dart';
import 'package:salingsapa/data/models/user_model.dart';
import 'package:salingsapa/data/sources/user_remote_data_source.dart';
import 'package:salingsapa/domain/entities/user.dart';
import 'package:salingsapa/domain/repositories/user_repository.dart';

import '../../core/utils/logger.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, Unit>> updateFcmToken({
    required String userId,
    required String fcmToken,
  }) async {
    try {
      await _remoteDataSource.updateInitialData(
          userId: userId, fcmToken: fcmToken);
      return const Right(unit);
    } catch (error) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<RepoResponse<String>> updateName({required String name}) async {
    try {
      await _remoteDataSource.updateName(name: name);

      return Right(name);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<String>> updateProfilePicture({
    required Uint8List imageBytes,
  }) async {
    try {
      final downloadUrl =
          await _remoteDataSource.updateProfilePicture(imageBytes: imageBytes);

      return Right(downloadUrl);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Stream<Either<Failure, User>> get onUserStateChanged =>
      _remoteDataSource.onUserStateChanged.map((model) {
        if (model == null) {
          Logger.print('(repository) no current user active');
          return Left(UnknownFailure());
        }
        try {
          Logger.print(
              '(repository) current user number: ${model.phoneNumber}');
          return Right(model.toEntity());
        } catch (error) {
          Logger.error(error,
              event:
                  '(repository) converting model to entity when onUserStateChanged');
          return Left(UnknownFailure());
        }
      });

  @override
  Future<RepoResponse<User>> getCurrentUser() async {
    try {
      final user = await _remoteDataSource.getCurrentUser();

      if (user == null) {
        Logger.print('(repository) no current user active');
        return Left(ServerFailure());
      }

      return Right(user.toEntity());
    } catch (error) {
      Logger.error(error, event: 'getting current user');
      return Left(UnknownFailure());
    }
  }
}
