import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/auth_status.dart';
import '../repositories/authentication_repository.dart';
import 'use_case.dart';

class GetAuthStatus extends NoParamUseCaseStreamSync<AuthStatus> {
  final AuthenticationRepository _repository;

  const GetAuthStatus(this._repository);

  @override
  Stream<Either<Failure, AuthStatus>> call() {
    return _repository.authorizationStatus;
  }
}
