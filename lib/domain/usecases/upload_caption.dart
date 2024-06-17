import 'package:dartz/dartz.dart';

import '../entities/caption.dart';
import '../errors/failure.dart';
import '../repositories/caption_repository.dart';
import 'use_case.dart';

class UploadCaption extends UseCase<Caption, Unit> {
  final CaptionRepository _repository;

  UploadCaption(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Caption param) async {
    return await _repository.upload(param);
  }
}
