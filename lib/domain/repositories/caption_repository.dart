import 'package:dartz/dartz.dart';

import '../entities/caption.dart';
import '../errors/failure.dart';

abstract class CaptionRepository {
  Future<Either<Failure, Unit>> init({required String roomId});

  Future<Either<Failure, Unit>> enable();

  Future<Either<Failure, Unit>> disable();

  Stream<Either<Failure, List<Caption>>> stream();

  Future<Either<Failure, Unit>> upload(Caption caption);
}
