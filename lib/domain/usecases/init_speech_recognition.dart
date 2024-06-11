import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../repositories/speech_recognition_repository.dart';
import 'use_case.dart';

class InitSpeechRecognition extends NoParamUseCase<Unit> {
  final SpeechRecognitionRepository _repository;

  InitSpeechRecognition(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.init();
  }
}
