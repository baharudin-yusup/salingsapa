import 'package:dartz/dartz.dart';

import '../errors/failure.dart';
import '../repositories/video_call_repository.dart';
import 'use_case.dart';

class FlipVideoCallCamera extends NoParamUseCase<Unit> {
  final VideoCallRepository _repository;

  const FlipVideoCallCamera(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.flipCamera();
  }
}
