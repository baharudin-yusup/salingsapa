import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/return_type.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/caption.dart';
import '../../domain/entities/recognition_status.dart';
import '../../domain/repositories/speech_recognition_repository.dart';
import '../models/caption_model.dart';
import '../plugins/speech_recognition_plugin.dart';

const _tagName = 'SpeechRecognitionRepository';

class SpeechRecognitionRepositoryImpl implements SpeechRecognitionRepository {
  final SpeechRecognitionPlugin _speechRecognitionPlugin;

  SpeechRecognitionRepositoryImpl(this._speechRecognitionPlugin);

  @override
  Future<RepoResponse<Unit>> disable() async {
    try {
      await _speechRecognitionPlugin.stop();
      Logger.print('disabling speech recognition feature success!',
          name: _tagName);
      return const Right(unit);
    } catch (exception) {
      Logger.error(exception,
          event: 'disabling speech recognition feature', name: _tagName);
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<Unit>> enable() async {
    try {
      await _speechRecognitionPlugin.start();
      Logger.print('enabling speech recognition feature success!',
          name: _tagName);
      return const Right(unit);
    } catch (exception) {
      Logger.error(exception,
          event: 'enabling speech recognition feature', name: _tagName);
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<RepoResponse<Unit>> init() async {
    try {
      await _speechRecognitionPlugin.init();
      Logger.print('initializing speech recognition feature success!',
          name: _tagName);
      return const Right(unit);
    } catch (exception) {
      Logger.error(exception,
          event: 'initializing speech recognition feature', name: _tagName);
      return const Left(UnknownFailure());
    }
  }

  @override
  Stream<RepoResponse<Caption>> get result =>
      _speechRecognitionPlugin.result.map((result) {
        final model = CaptionModel.self(
          captionId: result.id,
          rawData: result.data,
          createdAt: result.createdAt,
        );

        Logger.print('speech recognition result = ${model.rawData}',
            name: _tagName);
        return Right(model.toEntity());
      });

  @override
  Stream<RepoResponse<RecognitionStatus>> get status =>
      _speechRecognitionPlugin.status.map((status) => Right(status));
}
