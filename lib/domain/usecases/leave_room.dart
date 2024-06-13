import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/room.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class LeaveRoom extends UseCase<Room, Unit> {
  final VideoCallRepository _repository;

  const LeaveRoom(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Room param) async {
    return await _repository.leaveRoom(room: param);
  }
}
