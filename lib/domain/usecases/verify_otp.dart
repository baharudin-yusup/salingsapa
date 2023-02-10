import 'package:dartz/dartz.dart';
import 'package:saling_sapa/core/errors/failures.dart';
import 'package:saling_sapa/core/interfaces/use_case.dart';
import 'package:saling_sapa/domain/entities/user.dart';
import 'package:saling_sapa/domain/repositories/authentication_repository.dart';

class VerifyOtp extends UseCase<String, User> {
  final AuthenticationRepository _repository;

  const VerifyOtp(this._repository);

  @override
  Future<Either<Failure, User>> call(String param) async {
    return await _repository.verifyOtp(otp: param);
  }
}
