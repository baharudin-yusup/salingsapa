import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';

abstract class UserRepository {
  Future<Either<Failure, Unit>> updateFcmToken({
    required String userId,
    required String fcmToken,
  });
}
