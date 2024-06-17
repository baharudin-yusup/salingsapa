import 'package:dartz/dartz.dart';

import '../entities/user.dart';
import '../errors/failure.dart';
import '../repositories/user_repository.dart';
import 'use_case.dart';

class GetCurrentUser extends NoParamUseCase<User> {
  final UserRepository _repository;

  GetCurrentUser(this._repository);
  @override
  Future<Either<Failure, User>> call() async {
    return await _repository.getCurrentUser();
  }
}
