import 'package:dartz/dartz.dart';

import '../../../core/utils/logger.dart';
import '../errors/failure.dart';
import '../repositories/external_link_repository.dart';
import 'use_case.dart';

class GetSupportContent extends NoParamUseCase<String> {
  final ExternalLinkRepository _repository;

  GetSupportContent(this._repository);

  @override
  Future<Either<Failure, String>> call() async {
    Logger.print('(UC) get privacy policy content started...');
    return await _repository.getSupportContent();
  }
}
