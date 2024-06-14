import '../repositories/repo_outcome.dart';

abstract class UseCase<Param, SuccessType> {
  const UseCase();

  Future<RepoOutcome<SuccessType>> call(Param param);
}

abstract class UseCaseSync<Param, SuccessType> {
  const UseCaseSync();

  RepoOutcome<SuccessType> call(Param param);
}

abstract class UseCaseStreamSync<Param, SuccessType> {
  const UseCaseStreamSync();

  Stream<RepoOutcome<SuccessType>> call(Param param);
}

abstract class NoParamUseCase<SuccessType> {
  const NoParamUseCase();

  Future<RepoOutcome<SuccessType>> call();
}

abstract class NoParamUseCaseSync<SuccessType> {
  const NoParamUseCaseSync();

  RepoOutcome<SuccessType> call();
}

abstract class NoParamUseCaseStreamSync<SuccessType> {
  const NoParamUseCaseStreamSync();

  Stream<RepoOutcome<SuccessType>> call();
}
