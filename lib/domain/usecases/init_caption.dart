import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/caption_repository.dart';

class InitCaption extends UseCase<String, Unit> {
  final CaptionRepository _repository;

  InitCaption(this._repository);

  @override
  Future<Either<Failure, Unit>> call(String param) async {
    return await _repository.init(invitationId: param);
  }
}
