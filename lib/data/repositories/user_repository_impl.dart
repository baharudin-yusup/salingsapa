import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/return_type.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../sources/user_local_data_source.dart';
import '../sources/user_remote_data_source.dart';

class UserRepositoryImpl extends UserRepository {
  final UserLocalDataSource _localDataSource;
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, Unit>> updateFcmToken({
    required String token,
  }) async {
    if (await _remoteDataSource.getCurrentUser() == null) {
      Logger.print('user is not logged in, so skip the next flow');
      return const Right(unit);
    }

    final localUserData = await _localDataSource.getCurrentUser();
    if (localUserData.fcmToken?.value == token) {
      Logger.print(
          'user already have updated FCM token, so skip the next flow');
      return const Right(unit);
    }

    try {
      await _remoteDataSource.updateFcmToken(token: token);
    } catch (error) {
      Logger.error(error, event: 'updating FCM token');
      return const Left(ServerFailure());
    }

    try {
      await _localDataSource.updateFcmToken(token);
      Logger.print('updating FCM token success!');
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'updating FCM token');
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<String>> updateName({required String name}) async {
    if (await _remoteDataSource.getCurrentUser() == null) {
      Logger.print('user is not logged in, so skip the next flow');
      return const Left(UnknownFailure());
    }

    final localUserData = await _localDataSource.getCurrentUser();
    if (localUserData.name?.value == name) {
      Logger.print('user already have updated name, so skip the next flow');
      return Right(name);
    }

    try {
      await _remoteDataSource.updateName(name: name);
    } catch (error) {
      Logger.error(error, event: 'updating user profile name');
      return const Left(UnknownFailure());
    }

    try {
      await _localDataSource.updateName(name);
      return Right(name);
    } catch (error) {
      Logger.error(error, event: 'updating user profile name');
      return const Left(UnknownFailure());
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
      return const Left(UnknownFailure());
    }
  }

  @override
  Stream<Either<Failure, User>> get onUserStateChanged =>
      _remoteDataSource.onUserStateChanged.map((model) {
        if (model == null) {
          Logger.print('(repository) no current user active');
          return const Left(UnknownFailure());
        }
        try {
          Logger.print(
              '(repository) current user phone number: ${model.phoneNumber}');
          return Right(model.toEntity());
        } catch (error) {
          Logger.error(error,
              event:
                  '(repository) converting model to entity when onUserStateChanged');
          return const Left(UnknownFailure());
        }
      });

  @override
  Future<RepoResponse<User>> getCurrentUser() async {
    try {
      final user = await _remoteDataSource.getCurrentUser();

      if (user == null) {
        Logger.print('(repository) no current user active');
        return const Left(ServerFailure());
      }

      return Right(user.toEntity());
    } catch (error) {
      Logger.error(error, event: 'getting current user');
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<bool>> deleteAccount() async {
    try {
      final result = await _remoteDataSource.deleteAccount();
      return Right(result);
    } catch (exception) {
      return const Left(UnknownFailure());
    }
  }
}
