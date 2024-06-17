import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class MuteVideoCallAudio extends UseCase<bool, Unit> {
  final VideoCallRepository _repository;
  const MuteVideoCallAudio(this._repository);

  @override
  Future<Either<Failure, Unit>> call(bool param) async {
    return await _repository.muteAudio(isMuted: param);
  }
}
