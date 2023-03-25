import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/entities/contact.dart';

class StartVideoCall extends UseCase<StartVideoCallParam, Unit> {
  const StartVideoCall();

  @override
  Future<Either<Failure, Unit>> call(StartVideoCallParam param) async {
    return const Right(unit);
  }
}

class StartVideoCallParam {
  final Contact contact;

  StartVideoCallParam({required this.contact});
}
