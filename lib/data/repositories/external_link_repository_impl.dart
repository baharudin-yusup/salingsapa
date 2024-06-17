import 'package:dartz/dartz.dart';

import '../../domain/errors/failure.dart';
import '../../domain/repositories/external_link_repository.dart';
import '../datasources/remote/external_link_remote_data_source.dart';

class ExternalLinkRepositoryImpl implements ExternalLinkRepository {
  final ExternalLinkRemoteDataSource _remoteDataSource;

  const ExternalLinkRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, String>> getPrivacyPolicy() async {
    try {
      final content = await _remoteDataSource.getPrivacyPolicy();
      return Right(content);
    } catch (error) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getTnC() async {
    try {
      final content = await _remoteDataSource.getTnC();
      return Right(content);
    } catch (error) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getSupportContent() async {
    try {
      final content = await _remoteDataSource.getSupport();
      return Right(content);
    } catch (error) {
      return const Left(UnknownFailure());
    }
  }
}
