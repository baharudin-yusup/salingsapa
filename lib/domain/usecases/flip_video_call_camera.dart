import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

class FlipVideoCallCamera extends NoParamUseCase<Unit> {
  final VideoCallRepository _repository;

  const FlipVideoCallCamera(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.flipCamera();
  }
}
