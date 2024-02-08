import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../entities/auth_status.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, User>> verifyPhoneNumber({
    required String phoneNumber,
  });

  Future<Either<Failure, User>> verifyOtp({
    required String otp,
  });

  Future<Either<Failure, Unit>> resendOtp();

  Future<Either<Failure, Unit>> signOut();

  Future<Either<Failure, AuthStatus>> getLatestAuthStatus();

  Stream<Either<Failure, AuthStatus>> get authorizationStatus;

  Future<Either<Failure, Unit>> init();
}
