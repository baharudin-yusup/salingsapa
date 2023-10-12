import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/recognition_status.dart';
import '../repositories/speech_recognition_repository.dart';

class StreamSpeechRecognitionStatus
    extends NoParamUseCaseStreamSync<RecognitionStatus> {
  final SpeechRecognitionRepository _repository;

  StreamSpeechRecognitionStatus(this._repository);

  @override
  Stream<Either<Failure, RecognitionStatus>> call() {
    return _repository.status;
  }
}
