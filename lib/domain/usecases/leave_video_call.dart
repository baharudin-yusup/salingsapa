import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

import '../entities/video_call_invitation.dart';

class LeaveVideoCall extends UseCase<VideoCallInvitation, Unit> {
  final VideoCallRepository _repository;

  const LeaveVideoCall(this._repository);

  @override
  Future<Either<Failure, Unit>> call(VideoCallInvitation param) async {
    return await _repository.leave(invitation: param);
  }
}
