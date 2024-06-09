import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/return_type.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, Unit>> updateFcmToken({
    required String token,
  });

  Future<RepoResponse<String>> updateName({
    required String name,
  });

  Future<RepoResponse<String>> updateProfilePicture({
    required Uint8List imageBytes,
  });

  Stream<RepoResponse<User>> get onUserStateChanged;

  Future<RepoResponse<User>> getCurrentUser();

  Future<RepoResponse<bool>> deleteAccount();
}
