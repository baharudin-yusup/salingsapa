part of 'recent_call_bloc.dart';

@freezed
class RecentCallState with _$RecentCallState {
  const factory RecentCallState.initial(
      [@Default(Stream.empty()) Stream<Either<Failure, List<Invitation>>> invitations,
      @Default([]) List<CallInfo> calls]) = _Initial;

  const factory RecentCallState.refreshInProgress(
      Stream<Either<Failure, List<Invitation>>> invitations,
      [@Default([]) List<CallInfo> calls]) = _RefreshInProgress;

  const factory RecentCallState.refreshSuccess(
      Stream<Either<Failure, List<Invitation>>> invitations,
      List<CallInfo> calls) = _RefreshSuccess;

  const factory RecentCallState.refreshFailure(
    Stream<Either<Failure, List<Invitation>>> invitations,
    List<CallInfo> calls, {
    required Failure failure,
  }) = _RefreshFailure;
}
