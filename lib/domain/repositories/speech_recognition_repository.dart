import 'package:dartz/dartz.dart';

import '../entities/caption.dart';
import '../entities/recognition_status.dart';
import 'repo_outcome.dart';

abstract class SpeechRecognitionRepository {
  Future<RepoOutcome<Unit>> init();

  Future<RepoOutcome<Unit>> enable();

  Future<RepoOutcome<Unit>> disable();

  Stream<RepoOutcome<Caption>> get result;

  Stream<RepoOutcome<RecognitionStatus>> get status;
}
