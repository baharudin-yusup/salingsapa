import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/video_frame.dart';
import '../repositories/sign_language_recognition_repository.dart';

class StartSignLanguageRecognition extends UseCase<PhotoSnapshot, Unit> {
  final SignLanguageRecognitionRepository _repository;

  StartSignLanguageRecognition(this._repository);

  @override
  Future<Either<Failure, Unit>> call(PhotoSnapshot param) async {
    return await _repository.analyzePhotoSnapshot(param);
  }
}
