import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class MuteVideoCallVideo extends UseCase<bool, Unit> {
  final VideoCallRepository _repository;

  const MuteVideoCallVideo(this._repository);

  @override
  Future<Either<Failure, Unit>> call(bool param) async {
    return await _repository.muteVideo(isMuted: param);
  }
}
