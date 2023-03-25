import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';
import 'package:salingsapa/core/errors/exceptions.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/data/models/user_model.dart';
import 'package:salingsapa/data/sources/authentication_local_data_source.dart';
import 'package:salingsapa/data/sources/authentication_remote_data_source.dart';
import 'package:salingsapa/domain/entities/auth_status.dart';
import 'package:salingsapa/domain/entities/user.dart';
import 'package:salingsapa/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final BehaviorSubject<Either<Failure, AuthStatus>>
      _authorizationStatusStreamController;
  final AuthenticationLocalDataSource _localDataSource;
  final AuthenticationRemoteDatSource _remoteDatSource;

  AuthenticationRepositoryImpl(this._localDataSource, this._remoteDatSource,
      this._authorizationStatusStreamController);

  @override
  Future<Either<Failure, Unit>> init() async {
    late final UserModel currentUser;
    try {
      currentUser = await _remoteDatSource.currentUser();
      Logger.print('(repository) getCurrentUser() value: $currentUser');
      _authorizationStatusStreamController.sink
          .add(const Right(AuthStatus.authorized));
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: '(repository) getting current user');

      _authorizationStatusStreamController.sink
          .add(const Right(AuthStatus.unauthorized));
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, User>> verifyPhoneNumber(
      {required String phoneNumber}) async {
    try {
      final model =
          await _remoteDatSource.verifyPhoneNumber(phoneNumber: phoneNumber);
      _authorizationStatusStreamController.sink
          .add(const Right(AuthStatus.authorized));
      return Right(model.toEntity());
    } on Exception catch (_) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _remoteDatSource.signOut();
      return const Right(unit);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, User>> verifyOtp({required String otp}) async {
    try {
      final model = await _remoteDatSource.verifyOtp(otp: otp);
      _authorizationStatusStreamController.sink
          .add(const Right(AuthStatus.authorized));
      return Right(model.toEntity());
    } on Exception catch (_) {
      return Left(ServerFailure());
    }
  }

  @override
  Stream<Either<Failure, AuthStatus>> get authorizationStatus =>
      _authorizationStatusStreamController.stream;
}
