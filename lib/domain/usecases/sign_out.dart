import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../repositories/authentication_repository.dart';
import 'use_case.dart';

class SignOut extends NoParamUseCase<Unit> {
  final AuthenticationRepository _repository;

  const SignOut(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.signOut();
  }
}
