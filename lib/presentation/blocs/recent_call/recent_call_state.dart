part of 'recent_call_bloc.dart';

@freezed
class RecentCallState with _$RecentCallState {
  const factory RecentCallState.initial(
      [@Default(Stream.empty())
      Stream<Either<Failure, List<Invitation>>> invitations,
      @Default([]) List<CallInfo> calls]) = _Initial;

  const factory RecentCallState.actionInProgress(
      Stream<Either<Failure, List<Invitation>>> invitations,
      [@Default([]) List<CallInfo> calls]) = _ActionInProgress;

  const factory RecentCallState.refreshSuccess(
      Stream<Either<Failure, List<Invitation>>> invitations,
      List<CallInfo> calls) = _RefreshSuccess;

  const factory RecentCallState.actionFailure(
    Stream<Either<Failure, List<Invitation>>> invitations,
    List<CallInfo> calls, {
    required Failure failure,
  }) = _ActionFailure;

  const factory RecentCallState.acceptInvitationSuccess(
      Stream<Either<Failure, List<Invitation>>> invitations,
      List<CallInfo> calls,
      Room room) = _AcceptInvitationSuccess;
}
