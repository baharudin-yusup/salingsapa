part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.started() = _Started;

  const factory AccountEvent.signOutStarted() = _SignOutStarted;

  const factory AccountEvent.pickImageStarted() = _PickImageStarted;

  const factory AccountEvent.updateNameStarted(String name) =
      _UpdateNameStarted;

  const factory AccountEvent.currentUserUpdated(User user) =
      _CurrentUserUpdated;

  const factory AccountEvent.deleteAccountStarted() = _DeleteAccountStarted;
  const factory AccountEvent.updateFcmTokenStarted(String token) = _UpdateFcmTokenStarted;
}
