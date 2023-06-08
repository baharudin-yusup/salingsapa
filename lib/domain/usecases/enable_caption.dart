import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/caption_repository.dart';

class EnableCaption extends NoParamUseCase<Unit> {
  final CaptionRepository _repository;

  EnableCaption(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.enable();
  }
}
