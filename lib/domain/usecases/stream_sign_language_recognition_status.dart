import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/recognition_status.dart';
import '../repositories/sign_language_recognition_repository.dart';

class StreamSignLanguageRecognitionStatus
    extends NoParamUseCaseStreamSync<RecognitionStatus> {
  final SignLanguageRecognitionRepository _repository;

  StreamSignLanguageRecognitionStatus(this._repository);

  @override
  Stream<Either<Failure, RecognitionStatus>> call() {
    return _repository.status;
  }
}
