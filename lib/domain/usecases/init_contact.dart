import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/contact_repository.dart';

class InitContact extends NoParamUseCase<Unit> {
  final ContactRepository _repository;

  InitContact(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.init();
  }
}
