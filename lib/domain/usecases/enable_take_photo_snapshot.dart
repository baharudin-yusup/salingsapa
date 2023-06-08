import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/video_call_repository.dart';

class EnableTakePhotoSnapshot extends NoParamUseCase<Unit> {
  final VideoCallRepository _repository;

  EnableTakePhotoSnapshot(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.enableTakeSnapshot();
  }
}
