import 'package:dartz/dartz.dart';

import '../entities/video_frame.dart';
import '../errors/failure.dart';
import '../repositories/sign_language_recognition_repository.dart';
import 'use_case.dart';

class AnalyzeVideoFrame extends UseCase<SalingsapaVideoFrame, String> {
  final SignLanguageRecognitionRepository _repository;

  AnalyzeVideoFrame(this._repository);

  @override
  Future<Either<Failure, String>> call(SalingsapaVideoFrame param) async {
    return await _repository.analyzeFrame(param);
  }
}
