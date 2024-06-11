import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../repositories/contact_repository.dart';
import 'use_case.dart';

class InitContact extends NoParamUseCase<Unit> {
  final ContactRepository _repository;

  InitContact(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.init();
  }
}
