import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/video_frame.dart';
import '../repositories/video_call_repository.dart';

class StreamPhotoSnapshot extends NoParamUseCaseStreamSync<PhotoSnapshot> {
  final VideoCallRepository _repository;

  const StreamPhotoSnapshot(this._repository);

  @override
  Stream<Either<Failure, PhotoSnapshot>> call() {
    return _repository.photoSnapshot;
  }
}
