import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../repositories/external_link_repository.dart';
import 'use_case.dart';

class GetTermsAndConditionContent extends NoParamUseCase<String> {
  final ExternalLinkRepository _repository;

  GetTermsAndConditionContent(this._repository);

  @override
  Future<Either<Failure, String>> call() async {
    return await _repository.getTnC();
  }
}