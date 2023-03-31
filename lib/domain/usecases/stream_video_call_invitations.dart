import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/domain/entities/video_call_invitation.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';

class StreamVideoCallInvitations
    extends NoParamUseCaseStreamSync<List<VideoCallInvitation>> {
  final VideoCallRepository _repository;

  StreamVideoCallInvitations(this._repository);

  @override
  Stream<Either<Failure, List<VideoCallInvitation>>> call() {
    Logger.print('(usecase) get stream video call invitations started...');
    return _repository.invitations;
  }
}
