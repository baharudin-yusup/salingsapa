import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/call_info.dart';

class GetRecentCall extends NoParamUseCase<List<CallInfo>> {
  @override
  Future<Either<Failure, List<CallInfo>>> call() async {
    return const Right([]);
  }
}
