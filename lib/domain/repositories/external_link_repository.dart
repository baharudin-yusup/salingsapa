import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';

abstract class ExternalLinkRepository {
  Future<Either<Failure, String>> getPrivacyPolicy();

  Future<Either<Failure, String>> getTnC();

  Future<Either<Failure, String>> getSupportContent();
}
