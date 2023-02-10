import 'package:dartz/dartz.dart';
import 'package:saling_sapa/core/errors/failures.dart';
import 'package:saling_sapa/core/interfaces/use_case.dart';
import 'package:saling_sapa/domain/repositories/authentication_repository.dart';

class SignOut extends NoParamUseCase<Unit> {
  final AuthenticationRepository _repository;

  const SignOut(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.signOut();
  }
}
