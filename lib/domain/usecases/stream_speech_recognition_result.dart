import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/caption.dart';
import '../repositories/speech_recognition_repository.dart';

class StreamSpeechRecognitionResult extends NoParamUseCaseStreamSync<Caption> {
  final SpeechRecognitionRepository _repository;

  StreamSpeechRecognitionResult(this._repository);

  @override
  Stream<Either<Failure, Caption>> call() {
    return _repository.result;
  }
}
