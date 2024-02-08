import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';
import '../../../core/interfaces/use_case.dart';
import '../../../core/utils/logger.dart';
import '../../repositories/external_link_repository.dart';

class GetSupportContent extends NoParamUseCase<String> {
  final ExternalLinkRepository _repository;

  GetSupportContent(this._repository);

  @override
  Future<Either<Failure, String>> call() async {
    Logger.print('(UC) get privacy policy content started...');
    return await _repository.getSupportContent();
  }
}
