import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class DisableTakePhotoSnapshot extends NoParamUseCase<Unit> {
  final VideoCallRepository _repository;

  DisableTakePhotoSnapshot(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.disableTakeSnapshot();
  }
}
