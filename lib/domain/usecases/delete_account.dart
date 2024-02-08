import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../../core/utils/logger.dart';
import '../repositories/user_repository.dart';

class DeleteAccount extends NoParamUseCase<bool> {
  final UserRepository _repository;

  const DeleteAccount(this._repository);

  @override
  Future<Either<Failure, bool>> call() async {
    Logger.print('handle delete account use case...');
    return await _repository.deleteAccount();
  }
}
