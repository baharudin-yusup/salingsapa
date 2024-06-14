import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class InitVideoEngine extends NoParamUseCase<RtcEngine> {
  final VideoCallRepository _repository;

  const InitVideoEngine(this._repository);

  @override
  Future<Either<Failure, RtcEngine>> call() async {
    return await _repository.init();
  }
}
