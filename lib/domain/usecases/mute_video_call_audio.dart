import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/video_call_repository.dart';

class MuteVideoCallAudio extends UseCase<bool, Unit> {
  final VideoCallRepository _repository;
  const MuteVideoCallAudio(this._repository);

  @override
  Future<Either<Failure, Unit>> call(bool param) async {
    return await _repository.muteAudio(isMuted: param);
  }
}
