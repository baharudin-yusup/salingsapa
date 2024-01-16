import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/room.dart';
import '../repositories/video_call_repository.dart';

class JoinRoom extends UseCase<Room, Unit> {
  final VideoCallRepository _repository;
  const JoinRoom(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Room param) async {
    return await _repository.joinRoom(room: param);
  }
}
