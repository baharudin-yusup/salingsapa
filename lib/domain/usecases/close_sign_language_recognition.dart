import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../repositories/sign_language_recognition_repository.dart';
import 'use_case.dart';

class CloseSignLanguageRecognition extends NoParamUseCase<Unit> {
  final SignLanguageRecognitionRepository _repository;

  CloseSignLanguageRecognition(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.close();
  }
}
