import 'package:dartz/dartz.dart';
import 'package:salingsapa/domain/repositories/user_repository.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/user.dart';

class StreamCurrentUser extends NoParamUseCaseStreamSync<User> {
  final UserRepository _repository;

  StreamCurrentUser(this._repository);

  @override
  Stream<Either<Failure, User>> call() {
    return _repository.currentUser;
  }
}
