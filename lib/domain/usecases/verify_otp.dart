import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/user.dart';
import '../repositories/authentication_repository.dart';

class VerifyOtp extends UseCase<String, User> {
  final AuthenticationRepository _repository;

  const VerifyOtp(this._repository);

  @override
  Future<Either<Failure, User>> call(String param) async {
    return await _repository.verifyOtp(otp: param);
  }
}
