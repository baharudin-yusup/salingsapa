import 'package:dartz/dartz.dart';

import '../entities/video_frame.dart';
import '../errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class StreamPhotoSnapshot extends NoParamUseCaseStreamSync<PhotoSnapshot> {
  final VideoCallRepository _repository;

  const StreamPhotoSnapshot(this._repository);

  @override
  Stream<Either<Failure, PhotoSnapshot>> call() {
    return _repository.photoSnapshot;
  }
}
