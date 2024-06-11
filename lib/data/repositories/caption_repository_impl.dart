import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/caption.dart';
import '../../domain/repositories/caption_repository.dart';
import '../datasources/remote/caption_remote_data_source.dart';
import '../models/caption_model.dart';

class CaptionRepositoryImpl implements CaptionRepository {
  final CaptionRemoteDataSource _remoteDataSource;

  CaptionRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, Unit>> init({required String roomId}) async {
    try {
      await _remoteDataSource.init(roomId);
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'initializing caption repository');
      return Left(ServerFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Stream<Either<Failure, List<Caption>>> stream() {
    try {
      final captionStream = _remoteDataSource.stream();
      return captionStream.map(
        (model) => Right(model.map((e) => e.toEntity()).toList()),
      );
    } catch (error) {
      Logger.error(error, event: 'getting caption stream');
      return const Stream.empty();
    }
  }

  @override
  Future<Either<Failure, Unit>> disable() async {
    try {
      await _remoteDataSource.disable();
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'disabling caption feature');
      return Left(ServerFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Future<Either<Failure, Unit>> enable() async {
    try {
      await _remoteDataSource.enable();
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'enabling caption feature (repo)');
      return Left(ServerFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Future<Either<Failure, Unit>> upload(Caption caption) async {
    try {
      await _remoteDataSource.upload(CaptionModel.fromEntity(caption));
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'uploading caption');
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }
}
