import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/video_frame.dart';
import '../repositories/video_call_repository.dart';

class StreamVideoFrame extends NoParamUseCaseStreamSync<SalingsapaVideoFrame> {
  final VideoCallRepository _repository;

  const StreamVideoFrame(this._repository);

  @override
  Stream<Either<Failure, SalingsapaVideoFrame>> call() {
    return const Stream.empty();
    // return _repository.videoFrame;
  }
}
