part of 'contact_list_bloc.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState.initial([
    @Default([]) List<Contact> contacts,
    @Default(null) final bool? isPermissionValid,
  ]) = _Initial;

  const factory ContactListState.loadInProgress(
      List<Contact> contacts, final bool isPermissionValid) = _LoadInProgress;

  const factory ContactListState.loadSuccess(
      List<Contact> contacts, final bool isPermissionValid) = _LoadSuccess;

  const factory ContactListState.loadFailure(
    Failure failure, {
    required List<Contact> contacts,
    required final bool isPermissionValid,
  }) = _LoadFailure;

  const factory ContactListState.startVideoCallFailure({
    required String errorMessage,
    required DateTime lastTryDate,
    required List<Contact> contacts,
    required final bool isPermissionValid,
  }) = _StartVideoCallFailure;

  const factory ContactListState.startVideoCallSuccess(
    List<Contact> contacts, {
    required Contact selectedContact,
    required DateTime calledAt,
    required final bool isPermissionValid,
  }) = _StartVideoCallSuccess;
}
