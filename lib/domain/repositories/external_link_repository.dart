import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';

abstract class ExternalLinkRepository {
  Future<Either<Failure, String>> getPrivacyPolicy();

  Future<Either<Failure, String>> getTnC();
}
