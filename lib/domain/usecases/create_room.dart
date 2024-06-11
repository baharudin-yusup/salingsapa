import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/logger.dart';
import '../entities/contact.dart';
import '../entities/room.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class CreateRoom extends UseCase<Contact, Room> {
  final VideoCallRepository _repository;
  const CreateRoom(this._repository);

  @override
  Future<Either<Failure, Room>> call(Contact param) async {
    Logger.print('(usecase) create room started...');
    return await _repository.createRoom(contact: param);
  }
}
