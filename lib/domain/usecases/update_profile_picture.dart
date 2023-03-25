import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:salingsapa/domain/repositories/user_repository.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';

class UpdateProfilePicture extends UseCase<Uint8List, String> {
  final UserRepository _repository;

  const UpdateProfilePicture(this._repository);

  @override
  Future<Either<Failure, String>> call(Uint8List param) async {
    return await _repository.updateProfilePicture(imageBytes: param);
  }
}
