import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuthException;
import 'package:rxdart/rxdart.dart';

import '../../core/utils/logger.dart';
import '../../domain/entities/auth_status.dart';
import '../../domain/entities/user.dart';
import '../../domain/errors/failure.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../constants/exception_code.dart';
import '../datasources/local/authentication_local_data_source.dart';
import '../datasources/remote/authentication_remote_data_source.dart';
import '../models/api/user_model.dart';
import '../models/exception/exception.dart';
import '../models/local/submit_phone_number_status.dart';

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
      Logger.print(
          '(repository) getCurrentUser() value phone number: ${currentUser?.phoneNumber}');

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
  Future<Either<Failure, User>> verifyPhoneNumber({
    required String phoneNumber,
  }) async {
    Logger.print('verifying phone number $phoneNumber started...');
    try {
      _remoteDatSource.verifyPhoneNumber(phoneNumber: phoneNumber);

      final latestValue = await _getLatestSubmitPhoneNumberStatus();

      // TODO: Remove this delay
      // This delay is to make sure the stream controller is closed
      await Future.delayed(const Duration(milliseconds: 100));

      Logger.print('latest verify phone number status: $latestValue');

      if (latestValue is SubmitPhoneNumberStatusNoResponse) {
        return Left(
          ServerFailure(
            code: AppFailureCode.submitPhoneNumberNoResponse,
            createdAt: DateTime.now(),
          ),
        );
      }

      if (latestValue is CodeSent) {
        return Left(
          ServerFailure(
            code: AppFailureCode.autoSignInFailed,
            createdAt: DateTime.now(),
          ),
        );
      }

      if (latestValue is SubmitPhoneNumberError) {
        Logger.error(latestValue.exception?.message,
            event: 'verifying phone number');
        return Left(
          ServerFailure(
            code: AppFailureCode.phoneNumberBlocked,
            createdAt: DateTime.now(),
          ),
        );
      }

      if (latestValue is AutoSignIn) {
        return Right(latestValue.user.toEntity());
      }

      return Left(
        ServerFailure(
          createdAt: DateTime.now(),
        ),
      );
    } on AppFailureCode catch (code) {
      return Left(ServerFailure(code: code, createdAt: DateTime.now()));
    } on Exception catch (_) {
      return Left(ServerFailure(createdAt: DateTime.now()));
    }
  }

  Future<SubmitPhoneNumberStatus> _getLatestSubmitPhoneNumberStatus() async {
    Completer<SubmitPhoneNumberStatus> completer =
        Completer<SubmitPhoneNumberStatus>();

    // Listener for the stream
    late StreamSubscription<SubmitPhoneNumberStatus> subscription;
    subscription = _remoteDatSource.streamSubmitPhoneNumberStatus.listen(
      (status) {
        completer.complete(status); // Fill the completer with the latest value
        subscription
            .cancel(); // Cancel the subscription after getting the latest value
      },
      onError: (error) {
        completer.completeError(
            error); // Fill the completer with an error if one occurs
      },
      cancelOnError: true, // Cancel the subscription if an error occurs
    );

    return completer.future;
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _remoteDatSource.signOut();
      await _localDataSource.clearUserData();
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: '(repository) signing out');
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Future<Either<Failure, User>> verifyOtp({
    required String otp,
  }) async {
    try {
      final model = await _remoteDatSource.verifyOtp(otp: otp);
      _authorizationStatusStreamController.sink
          .add(const Right(AuthStatus.authorized));
      return Right(model.toEntity());
    } on FirebaseAuthException catch (exception) {
      switch (exception.type) {
        case FirebaseExceptionCode.invalidVerificationCode:
          return const Left(ServerFailure(code: AppFailureCode.invalidOtp));
        default:
          return Left(ServerFailure(createdAt: DateTime.now()));
      }
    } on AppFailureCode catch (code) {
      return Left(ServerFailure(code: code, createdAt: DateTime.now()));
    } catch (exception) {
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
