import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/caption.dart';
import '../repositories/speech_recognition_repository.dart';
import 'use_case.dart';

class StreamSpeechRecognitionResult extends NoParamUseCaseStreamSync<Caption> {
  final SpeechRecognitionRepository _repository;

  StreamSpeechRecognitionResult(this._repository);

  @override
  Stream<Either<Failure, Caption>> call() {
    return _repository.result;
  }
}
