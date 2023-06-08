import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/sign_language_recognition_repository.dart';

class InitSignLanguageRecognition extends NoParamUseCase<Unit> {
  final SignLanguageRecognitionRepository _repository;

  InitSignLanguageRecognition(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.init();
  }
}
