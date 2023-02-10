import 'package:dartz/dartz.dart';
import 'package:saling_sapa/domain/entities/user.dart';

import '../../core/errors/failures.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, User>> verifyPhoneNumber(
      {required String phoneNumber});

  Future<Either<Failure, User>> verifyOtp({required String otp});

  Future<Either<Failure, Unit>> signOut();
}
