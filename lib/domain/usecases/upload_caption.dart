import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/caption.dart';
import '../repositories/caption_repository.dart';

class UploadCaption extends UseCase<Caption, Unit> {
  final CaptionRepository _repository;

  UploadCaption(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Caption param) async {
    return await _repository.upload(param);
  }
}
