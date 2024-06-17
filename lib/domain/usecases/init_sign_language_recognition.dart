import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/sign_language_recognition_repository.dart';
import 'use_case.dart';

class InitSignLanguageRecognition extends NoParamUseCase<Unit> {
  final SignLanguageRecognitionRepository _repository;

  InitSignLanguageRecognition(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.init();
  }
}
