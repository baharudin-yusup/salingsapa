import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/sign_language_recognition_repository.dart';

class EnableSignLanguageRecognition extends NoParamUseCase<Unit> {
  final SignLanguageRecognitionRepository _repository;

  EnableSignLanguageRecognition(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.enable();
  }
}
