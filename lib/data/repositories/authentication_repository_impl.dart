import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/auth_status.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../models/user_model.dart';
import '../sources/authentication_local_data_source.dart';
import '../sources/authentication_remote_data_source.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final BehaviorSubject<Either<Failure, AuthStatus>>
      _authorizationStatusStreamController;
  final AuthenticationLocalDataSource _localDataSource;
  final AuthenticationRemoteDatSource _remoteDatSource;

  AuthenticationRepositoryImpl(this._localDataSource, this._remoteDatSource,
      this._authorizationStatusStreamController);

  @override
  Future<Either<Failure, Unit>> init() async {
    _localDataSource.init();
    late final UserModel? currentUser;
    try {
      currentUser = await _remoteDatSource.currentUser();
      Logger.print('(repository) getCurrentUser() value: $currentUser');

      if (currentUser == null) {
        _authorizationStatusStreamController.sink
            .add(const Right(AuthStatus.unauthorized));
      } else {
        _authorizationStatusStreamController.sink
            .add(const Right(AuthStatus.authorized));
      }

      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: '(repository) getting current user');

      _authorizationStatusStreamController.sink
          .add(const Right(AuthStatus.unauthorized));
      return Left(CacheFailure(createdAt: DateTime.now()));
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
      return Left(ServerFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _remoteDatSource.signOut();
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: '(repository) signing out');
      return Left(UnknownFailure(createdAt: DateTime.now()));
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
      return Left(ServerFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Stream<Either<Failure, AuthStatus>> get authorizationStatus =>
      _authorizationStatusStreamController.stream;

  @override
  Future<Either<Failure, AuthStatus>> getLatestAuthStatus() async {
    try {
      final currentUser = await _remoteDatSource.currentUser();
      Logger.print('(repository) getCurrentUser() value: $currentUser');

      return Right(currentUser == null
          ? AuthStatus.unauthorized
          : AuthStatus.authorized);
    } catch (error) {
      Logger.error(error, event: '(repository) getting current user');
      return Left(CacheFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Future<Either<Failure, Unit>> resendOtp() async {
    return Left(FeatureFailure(
        errorMessage:
            'Please return to the previous page to request to send the OTP code again',
        createdAt: DateTime.now()));
  }
}
