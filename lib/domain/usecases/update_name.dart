import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/user_repository.dart';

class UpdateName extends UseCase<String, String> {
  final UserRepository _repository;

  const UpdateName(this._repository);

  @override
  Future<Either<Failure, String>> call(String param) async {
    return await _repository.updateName(name: param);
  }
}
