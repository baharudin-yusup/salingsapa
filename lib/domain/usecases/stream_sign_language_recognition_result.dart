import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/caption.dart';
import '../repositories/sign_language_recognition_repository.dart';
import 'use_case.dart';

class StreamSignLanguageRecognitionResult
    extends NoParamUseCaseStreamSync<Caption> {
  final SignLanguageRecognitionRepository _repository;

  StreamSignLanguageRecognitionResult(this._repository);

  @override
  Stream<Either<Failure, Caption>> call() {
    return _repository.result;
  }
}
