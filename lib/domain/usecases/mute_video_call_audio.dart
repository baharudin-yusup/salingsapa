import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

class MuteVideoCallAudio extends UseCase<bool, Unit> {
  final VideoCallRepository _repository;
  const MuteVideoCallAudio(this._repository);

  @override
  Future<Either<Failure, Unit>> call(bool param) async {
    return await _repository.muteAudio(isMuted: param);
  }
}
