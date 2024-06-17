import 'package:dartz/dartz.dart';

import '../entities/room.dart';
import '../errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class JoinRoom extends UseCase<Room, Unit> {
  final VideoCallRepository _repository;
  const JoinRoom(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Room param) async {
    return await _repository.joinRoom(room: param);
  }
}
