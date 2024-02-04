import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/return_type.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../models/user_model.dart';
import '../sources/user_remote_data_source.dart';

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
      return const Left(ServerFailure());
    }
  }

  @override
  Future<RepoResponse<String>> updateName({required String name}) async {
    try {
      await _remoteDataSource.updateName(name: name);

      return Right(name);
    } catch (_) {
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
}
