import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/entities/user.dart';
import 'package:salingsapa/domain/repositories/user_repository.dart';

class GetCurrentUser extends NoParamUseCase<User> {
  final UserRepository _repository;

  GetCurrentUser(this._repository);
  @override
  Future<Either<Failure, User>> call() async {
    return await _repository.getCurrentUser();
  }
}
