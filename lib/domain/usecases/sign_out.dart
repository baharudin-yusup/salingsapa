import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/repositories/authentication_repository.dart';

class SignOut extends NoParamUseCase<Unit> {
  final AuthenticationRepository _repository;

  const SignOut(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.signOut();
  }
}
