import 'package:dartz/dartz.dart';

import '../entities/call_info.dart';
import '../errors/failure.dart';
import 'use_case.dart';

class GetRecentCall extends NoParamUseCase<List<CallInfo>> {
  @override
  Future<Either<Failure, List<CallInfo>>> call() async {
    return const Right([]);
  }
}
