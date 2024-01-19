import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';
import '../../../core/interfaces/use_case.dart';
import '../../repositories/external_link_repository.dart';

class GetTermsAndConditionContent extends NoParamUseCase<String> {
  final ExternalLinkRepository _repository;

  GetTermsAndConditionContent(this._repository);

  @override
  Future<Either<Failure, String>> call() async {
    return await _repository.getTnC();
  }
}