import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class EnableTakePhotoSnapshot extends NoParamUseCase<Unit> {
  final VideoCallRepository _repository;

  EnableTakePhotoSnapshot(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.enableTakeSnapshot();
  }
}
