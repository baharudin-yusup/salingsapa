import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/user.dart';
import 'repo_outcome.dart';

abstract class UserRepository {
  Future<Either<Failure, Unit>> updateFcmToken({
    required String token,
  });

  Future<RepoOutcome<String>> updateName({
    required String name,
  });

  Future<RepoOutcome<String>> updateProfilePicture({
    required Uint8List imageBytes,
  });

  Stream<RepoOutcome<User>> get onUserStateChanged;

  Future<RepoOutcome<User>> getCurrentUser();

  Future<RepoOutcome<bool>> deleteAccount();
}
