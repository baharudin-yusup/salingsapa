import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../../core/utils/logger.dart';
import '../entities/Invitation.dart';
import '../repositories/video_call_repository.dart';

class StreamVideoCallInvitations extends NoParamUseCaseStreamSync<List<Invitation>> {
  final VideoCallRepository _repository;

  StreamVideoCallInvitations(this._repository);

  @override
  Stream<Either<Failure, List<Invitation>>> call() {
    Logger.print('(usecase) get stream video call invitations started...');
    return _repository.rooms;
  }
}
