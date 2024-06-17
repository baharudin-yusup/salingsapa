import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/sign_language_recognition_repository.dart';
import 'use_case.dart';

class DisableSignLanguageRecognition extends NoParamUseCase<Unit> {
  final SignLanguageRecognitionRepository _repository;

  DisableSignLanguageRecognition(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.disable();
  }
}
