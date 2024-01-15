import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/video_call_repository.dart';

class InitVideoEngine extends NoParamUseCase<RtcEngine> {
  final VideoCallRepository _repository;

  const InitVideoEngine(this._repository);

  @override
  Future<Either<Failure, RtcEngine>> call() async {
    return await _repository.init();
  }
}
