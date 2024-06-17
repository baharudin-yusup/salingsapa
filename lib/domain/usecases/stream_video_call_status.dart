import 'package:dartz/dartz.dart';

import '../entities/video_call_user_update_info.dart';
import '../errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class StreamVideoCallStatus
    extends NoParamUseCaseStreamSync<VideoCallUserUpdateInfo> {
  final VideoCallRepository _repository;

  StreamVideoCallStatus(this._repository);

  @override
  Stream<Either<Failure, VideoCallUserUpdateInfo>> call() {
    return _repository.videoCallStatus;
  }
}
