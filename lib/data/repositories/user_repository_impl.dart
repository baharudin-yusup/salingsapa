import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/data/sources/user_remote_data_source.dart';
import 'package:salingsapa/domain/repositories/user_repository.dart';

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
}
