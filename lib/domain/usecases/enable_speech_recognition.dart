import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/speech_recognition_repository.dart';

class EnableSpeechRecognition extends NoParamUseCase<Unit> {
  final SpeechRecognitionRepository _repository;

  EnableSpeechRecognition(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.enable();
  }
}
