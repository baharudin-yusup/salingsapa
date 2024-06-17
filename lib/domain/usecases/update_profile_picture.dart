import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/user_repository.dart';
import 'use_case.dart';

class UpdateProfilePicture extends UseCase<Uint8List, String> {
  final UserRepository _repository;

  const UpdateProfilePicture(this._repository);

  @override
  Future<Either<Failure, String>> call(Uint8List param) async {
    return await _repository.updateProfilePicture(imageBytes: param);
  }
}
