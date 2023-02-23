import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/entities/user.dart';
import 'package:salingsapa/domain/repositories/authentication_repository.dart';

class VerifyPhoneNumber extends UseCase<String, User> {
  final AuthenticationRepository _repository;

  const VerifyPhoneNumber(this._repository);

  @override
  Future<Either<Failure, User>> call(String param) async {
    return await _repository.verifyPhoneNumber(phoneNumber: param);
  }
}
