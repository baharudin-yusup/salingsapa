import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/entities/call_info.dart';

class GetRecentCall extends NoParamUseCase<List<CallInfo>> {
  @override
  Future<Either<Failure, List<CallInfo>>> call() async {
    return const Right([]);
  }
}
