import 'package:dartz/dartz.dart';

import '../errors/failures.dart';

abstract class UseCase<Param, SuccessType> {
  const UseCase();

  Future<Either<Failure, SuccessType>> call(Param param);
}

abstract class UseCaseSync<Param, SuccessType> {
  const UseCaseSync();

  Either<Failure, SuccessType> call(Param param);
}

abstract class UseCaseStreamSync<Param, SuccessType> {
  const UseCaseStreamSync();

  Stream<Either<Failure, SuccessType>> call(Param param);
}

abstract class NoParamUseCase<SuccessType> {
  const NoParamUseCase();

  Future<Either<Failure, SuccessType>> call();
}

abstract class NoParamUseCaseSync<SuccessType> {
  const NoParamUseCaseSync();

  Either<Failure, SuccessType> call();
}

abstract class NoParamUseCaseStreamSync<SuccessType> {
  const NoParamUseCaseStreamSync();

  Stream<Either<Failure, SuccessType>> call();
}
