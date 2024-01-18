import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/caption.dart';
import '../../domain/entities/recognition_status.dart';
import '../../domain/entities/video_frame.dart';
import '../../domain/repositories/sign_language_recognition_repository.dart';
import '../models/caption_model.dart';
import '../models/video_frame_model.dart';
import '../plugins/sign_language_recognition_plugin.dart';
import '../sources/sign_language_recognition_local_data_source.dart';

const _tagName = 'SignLanguageRecognizerRepository';

class SignLanguageRecognizerRepositoryImpl
    implements SignLanguageRecognitionRepository {
  final SignLanguageRecognitionPlugin _plugin;
  final SignLanguageRecognitionLocalDataSource _localDataSource;

  SignLanguageRecognizerRepositoryImpl(
    this._plugin,
    this._localDataSource,
  );

  @override
  Future<Either<Failure, Unit>> init() async {
    try {
      final model = await _localDataSource.getModel();
      await _plugin.init(model);
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'initializing plugin', name: _tagName);
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Future<Either<Failure, String>> analyzeFrame(
      SalingsapaVideoFrame frame) async {
    final result =
        await _plugin.analyzeFrame(SalingsapaVideoFrameModel.fromEntity(frame));
    if (result == null) return const Left(FeatureFailure());
    return Right(result);
  }

  @override
  Future<Either<Failure, Unit>> disable() async {
    try {
      await _plugin.disable();
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'disabling plugin', name: _tagName);
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> enable() async {
    try {
      // TODO: Enable this later
      // await _plugin.enable();
      // return const Right(unit);
      return Left(FeatureFailure(
        errorMessage:
            'Sorry, the sign language recognition feature is temporarily disabled',
        createdAt: DateTime.now(),
      ));
    } catch (error) {
      Logger.error(error, event: 'enabling plugin', name: _tagName);
      return const Left(UnknownFailure());
    }
  }

  @override
  Stream<Either<Failure, Caption>> get result => _plugin.result.map((model) {
        final captionModel = CaptionModel.self(
          captionId: model.id,
          rawData: model.data,
          createdAt: model.createdAt,
        );
        return Right(captionModel.toEntity());
      });

  @override
  Stream<Either<Failure, RecognitionStatus>> get status =>
      _plugin.status.map((status) => Right(status));

  @override
  Future<Either<Failure, Unit>> close() async {
    try {
      await _plugin.close();
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'closing plugin', name: _tagName);
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> analyzePhotoSnapshot(
      PhotoSnapshot photoSnapshot) async {
    try {
      await _plugin
          .analyzePhotoSnapshot(PhotoSnapshotModel.fromEntity(photoSnapshot));
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'analyzing photo snapshot', name: _tagName);
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> reset() async {
    try {
      await _plugin.reset();
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'resetting snapshot', name: _tagName);
      return const Left(UnknownFailure());
    }
  }
}
