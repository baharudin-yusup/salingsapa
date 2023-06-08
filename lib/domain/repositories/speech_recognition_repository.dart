import 'package:dartz/dartz.dart';

import '../../core/interfaces/return_type.dart';
import '../entities/caption.dart';
import '../entities/recognition_status.dart';

abstract class SpeechRecognitionRepository {
  Future<RepoResponse<Unit>> init();

  Future<RepoResponse<Unit>> enable();

  Future<RepoResponse<Unit>> disable();

  Stream<RepoResponse<Caption>> get result;

  Stream<RepoResponse<RecognitionStatus>> get status;
}
