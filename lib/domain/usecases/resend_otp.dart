import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/authentication_repository.dart';

class ResendOtp extends NoParamUseCase<Unit> {
  final AuthenticationRepository _repository;

  const ResendOtp(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.resendOtp();
  }
}
