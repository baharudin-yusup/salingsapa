import 'package:dartz/dartz.dart';

import '../entities/user.dart';
import '../errors/failure.dart';
import '../repositories/authentication_repository.dart';
import 'use_case.dart';

class VerifyOtp extends UseCase<String, User> {
  final AuthenticationRepository _repository;

  const VerifyOtp(this._repository);

  @override
  Future<Either<Failure, User>> call(String param) async {
    return await _repository.verifyOtp(otp: param);
  }
}
