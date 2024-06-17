import 'package:dartz/dartz.dart';

import '../entities/user.dart';
import '../errors/failure.dart';
import '../repositories/authentication_repository.dart';
import 'use_case.dart';

class VerifyPhoneNumber extends UseCase<String, User> {
  final AuthenticationRepository _repository;

  const VerifyPhoneNumber(this._repository);

  @override
  Future<Either<Failure, User>> call(String param) async {
    return await _repository.verifyPhoneNumber(phoneNumber: param);
  }
}
