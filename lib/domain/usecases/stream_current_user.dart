import 'package:dartz/dartz.dart';

import '../entities/user.dart';
import '../errors/failure.dart';
import '../repositories/user_repository.dart';
import 'use_case.dart';

class StreamCurrentUser extends NoParamUseCaseStreamSync<User> {
  final UserRepository _repository;

  StreamCurrentUser(this._repository);

  @override
  Stream<Either<Failure, User>> call() {
    return _repository.onUserStateChanged;
  }
}
