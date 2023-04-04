import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/video_call_user_update_info.dart';
import '../repositories/video_call_repository.dart';

class StreamVideoCallStatus
    extends NoParamUseCaseStreamSync<VideoCallUserUpdateInfo> {
  final VideoCallRepository _repository;

  StreamVideoCallStatus(this._repository);

  @override
  Stream<Either<Failure, VideoCallUserUpdateInfo>> call() {
    return _repository.videoCallStatus;
  }
}
