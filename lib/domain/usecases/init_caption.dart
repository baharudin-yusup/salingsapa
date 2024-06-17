import 'package:dartz/dartz.dart';

import '../entities/room.dart';
import '../errors/failure.dart';
import '../repositories/caption_repository.dart';
import 'use_case.dart';

class InitCaption extends UseCase<Room, Unit> {
  final CaptionRepository _repository;

  InitCaption(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Room param) async {
    return await _repository.init(roomId: param.roomId);
  }
}
