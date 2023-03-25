import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/interfaces/return_type.dart';

import '../../core/errors/failures.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, Unit>> updateFcmToken({
    required String userId,
    required String fcmToken,
  });

  Future<RepoResponse<String>> updateName({
    required String name,
  });

  Future<RepoResponse<String>> updateProfilePicture({
    required Uint8List imageBytes,
  });

  Stream<RepoResponse<User>> get currentUser;
}
