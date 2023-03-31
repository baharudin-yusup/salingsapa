import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

class GetVideoCallEngine extends NoParamUseCaseSync<RtcEngine> {
  final VideoCallRepository _repository;

  const GetVideoCallEngine(this._repository);

  @override
  Either<Failure, RtcEngine> call() {
    return _repository.engine;
  }
}
