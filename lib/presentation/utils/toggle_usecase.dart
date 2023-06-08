import '../../core/errors/failures.dart';
import '../../core/interfaces/return_type.dart';

Future<bool> toggleUseCase<T>(
  Future<RepoResponse<T>> Function() useCase, {
  void Function(Failure failure)? onFailure,
  void Function(T)? onSuccess,
}) async {
  final result = await useCase();
  return result.fold(
    (failure) {
      if (onFailure != null) {
        onFailure(failure);
      }
      return false;
    },
    (result) {
      if (onSuccess != null) {
        onSuccess(result);
      }
      return true;
    },
  );
}
