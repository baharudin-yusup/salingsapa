import 'package:dartz/dartz.dart';

import '../../core/utils/logger.dart';
import '../entities/invitation.dart';
import '../entities/room.dart';
import '../errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class AcceptInvitation extends UseCase<Invitation, Room> {
  final VideoCallRepository _repository;

  const AcceptInvitation(this._repository);

  @override
  Future<Either<Failure, Room>> call(Invitation param) async {
    Logger.print('(usecase) accept invitation started...');
    return await _repository.acceptInvitation(invitation: param);
  }
}
