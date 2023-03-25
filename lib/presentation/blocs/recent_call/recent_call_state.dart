part of 'recent_call_bloc.dart';

@freezed
class RecentCallState with _$RecentCallState {
  const factory RecentCallState.initial([@Default([]) List<CallInfo> calls]) =
      _Initial;

  const factory RecentCallState.refreshInProgress(
      [@Default([]) List<CallInfo> calls]) = _RefreshInProgress;

  const factory RecentCallState.refreshSuccess(List<CallInfo> calls) =
      _RefreshSuccess;

  const factory RecentCallState.refreshFailure(
    List<CallInfo> calls, {
    required Failure failure,
  }) = _RefreshFailure;
}
