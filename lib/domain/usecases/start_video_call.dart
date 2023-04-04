import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../../core/utils/logger.dart';
import '../entities/contact.dart';
import '../entities/video_call_invitation.dart';
import '../repositories/video_call_repository.dart';

class StartVideoCall extends UseCase<Contact, VideoCallInvitation> {
  final VideoCallRepository _repository;
  const StartVideoCall(this._repository);

  @override
  Future<Either<Failure, VideoCallInvitation>> call(Contact param) async {
    Logger.print('(usecase) start video call started...');
    return await _repository.start(contact: param);
  }
}
