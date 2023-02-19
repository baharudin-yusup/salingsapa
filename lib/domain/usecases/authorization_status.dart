import 'package:dartz/dartz.dart';
import 'package:saling_sapa/core/errors/failures.dart';
import 'package:saling_sapa/domain/entities/auth_status.dart';

import '../../core/interfaces/use_case.dart';
import '../repositories/authentication_repository.dart';

class GetAuthStatus extends NoParamUseCaseStreamSync<AuthStatus> {
  final AuthenticationRepository _repository;

  const GetAuthStatus(this._repository);

  @override
  Stream<Either<Failure, AuthStatus>> call() {
    return _repository.authorizationStatus;
  }
}
