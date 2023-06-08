import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/video_frame.dart';
import '../repositories/sign_language_recognition_repository.dart';

class AnalyzeVideoFrame extends UseCase<SalingsapaVideoFrame, String> {
  final SignLanguageRecognitionRepository _repository;

  AnalyzeVideoFrame(this._repository);

  @override
  Future<Either<Failure, String>> call(SalingsapaVideoFrame param) async {
    return await _repository.analyzeFrame(param);
  }
}
