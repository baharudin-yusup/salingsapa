import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/video_call_repository.dart';

class MuteVideoCallVideo extends UseCase<bool, Unit> {
  final VideoCallRepository _repository;

  const MuteVideoCallVideo(this._repository);

  @override
  Future<Either<Failure, Unit>> call(bool param) async {
    return await _repository.muteVideo(isMuted: param);
  }
}
