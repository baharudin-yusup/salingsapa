import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/logger.dart';
import '../repositories/external_link_repository.dart';
import 'use_case.dart';

class GetPrivacyPolicyContent extends NoParamUseCase<String> {
  final ExternalLinkRepository _repository;

  GetPrivacyPolicyContent(this._repository);

  @override
  Future<Either<Failure, String>> call() async {
    Logger.print('(UC) get privacy policy content started...');
    return await _repository.getPrivacyPolicy();
  }
}