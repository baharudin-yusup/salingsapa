import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/domain/entities/contact.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

import '../entities/video_call_invitation.dart';

class StartVideoCall extends UseCase<Contact, VideoCallInvitation> {
  final VideoCallRepository _repository;
  const StartVideoCall(this._repository);

  @override
  Future<Either<Failure, VideoCallInvitation>> call(Contact param) async {
    Logger.print('(usecase) start video call started...');
    return await _repository.start(contact: param);
  }
}
