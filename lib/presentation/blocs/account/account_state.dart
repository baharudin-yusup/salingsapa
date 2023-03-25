part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial({
    @Default(null) String? name,
    @Default(null) String? phoneNumber,
    @Default(null) String? profilePictureUrl,
  }) = _Initial;

  const factory AccountState.updateInProgress({
    required String? name,
    required String? phoneNumber,
    required String? profilePictureUrl,
  }) = _UpdateInProgress;

  const factory AccountState.updateFailure({
    required String? name,
    required String? phoneNumber,
    required String? profilePictureUrl,
    required String errorMessage,
  }) = _UpdateFailure;
}
