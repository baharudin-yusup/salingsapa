import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../../core/utils/logger.dart';
import '../entities/video_call_invitation.dart';
import '../repositories/video_call_repository.dart';

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
