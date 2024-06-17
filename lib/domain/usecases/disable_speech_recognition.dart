import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/speech_recognition_repository.dart';
import 'use_case.dart';

class DisableSpeechRecognition extends NoParamUseCase<Unit> {
  final SpeechRecognitionRepository _repository;

  DisableSpeechRecognition(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.disable();
  }
}
