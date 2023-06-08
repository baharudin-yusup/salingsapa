import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/caption_repository.dart';

class DisableCaption extends NoParamUseCase<Unit> {
  final CaptionRepository _repository;

  DisableCaption(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.disable();
  }
}
