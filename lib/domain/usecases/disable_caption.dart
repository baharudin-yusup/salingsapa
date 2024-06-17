import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/caption_repository.dart';
import 'use_case.dart';

class DisableCaption extends NoParamUseCase<Unit> {
  final CaptionRepository _repository;

  DisableCaption(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.disable();
  }
}
