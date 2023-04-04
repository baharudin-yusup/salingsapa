import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/video_call_invitation.dart';
import '../repositories/video_call_repository.dart';

class JoinVideoCall extends UseCase<VideoCallInvitation, VideoCallInvitation> {
  final VideoCallRepository _repository;
  const JoinVideoCall(this._repository);

  @override
  Future<Either<Failure, VideoCallInvitation>> call(
      VideoCallInvitation param) async {
    return await _repository.join(invitation: param);
  }
}
