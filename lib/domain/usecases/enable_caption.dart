import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/caption_repository.dart';
import 'use_case.dart';

class EnableCaption extends NoParamUseCase<Unit> {
  final CaptionRepository _repository;

  EnableCaption(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.enable();
  }
}
