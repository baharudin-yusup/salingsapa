import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/video_call_repository.dart';

class DisableTakePhotoSnapshot extends NoParamUseCase<Unit> {
  final VideoCallRepository _repository;

  DisableTakePhotoSnapshot(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
    return await _repository.disableTakeSnapshot();
  }
}
