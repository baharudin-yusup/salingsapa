part of 'recent_call_bloc.dart';

@freezed
class RecentCallEvent with _$RecentCallEvent {
  const factory RecentCallEvent.started() = _Started;
  const factory RecentCallEvent.refreshPulled() = _RefreshPulled;

  const factory RecentCallEvent.newCallTapped() = _NewCallTapped;
}
