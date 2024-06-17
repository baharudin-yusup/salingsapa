import 'package:dartz/dartz.dart';

import '../entities/recognition_status.dart';
import '../errors/failure.dart';
import '../repositories/sign_language_recognition_repository.dart';
import 'use_case.dart';

class StreamSignLanguageRecognitionStatus
    extends NoParamUseCaseStreamSync<RecognitionStatus> {
  final SignLanguageRecognitionRepository _repository;

  StreamSignLanguageRecognitionStatus(this._repository);

  @override
  Stream<Either<Failure, RecognitionStatus>> call() {
    return _repository.status;
  }
}
