import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/user_repository.dart';
import 'use_case.dart';

class UpdateFcmToken extends UseCase<String, Unit> {
  final UserRepository _repository;

  const UpdateFcmToken(this._repository);

  @override
  Future<Either<Failure, Unit>> call(String param) async {
    return await _repository.updateFcmToken(token: param);
  }
}
