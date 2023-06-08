import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../entities/caption.dart';
import '../entities/recognition_status.dart';
import '../entities/video_frame.dart';

abstract class SignLanguageRecognitionRepository {
  Future<Either<Failure, String>> analyzeFrame(SalingsapaVideoFrame frame);

  Future<Either<Failure, Unit>> analyzePhotoSnapshot(
      PhotoSnapshot photoSnapshot);

  Future<Either<Failure, Unit>> init();

  Future<Either<Failure, Unit>> reset();

  Future<Either<Failure, Unit>> enable();

  Future<Either<Failure, Unit>> disable();

  Future<Either<Failure, Unit>> close();

  Stream<Either<Failure, Caption>> get result;

  Stream<Either<Failure, RecognitionStatus>> get status;
}
