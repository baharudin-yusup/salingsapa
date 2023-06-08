import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../entities/caption.dart';

abstract class CaptionRepository {
  Future<Either<Failure, Unit>> init({required String invitationId});

  Future<Either<Failure, Unit>> enable();

  Future<Either<Failure, Unit>> disable();

  Stream<Either<Failure, List<Caption>>> stream();

  Future<Either<Failure, Unit>> upload(Caption caption);
}
