import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/caption.dart';
import '../repositories/caption_repository.dart';

class StreamCaption extends NoParamUseCaseStreamSync<List<Caption>> {
  final CaptionRepository _repository;

  const StreamCaption(this._repository);

  @override
  Stream<Either<Failure, List<Caption>>> call() {
    return _repository.stream();
  }
}
