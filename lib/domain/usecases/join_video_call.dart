import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

import '../entities/video_call_invitation.dart';

class JoinVideoCall extends UseCase<VideoCallInvitation, VideoCallInvitation> {
  final VideoCallRepository _repository;
  const JoinVideoCall(this._repository);

  @override
  Future<Either<Failure, VideoCallInvitation>> call(
      VideoCallInvitation param) async {
    return await _repository.join(invitation: param);
  }
}
