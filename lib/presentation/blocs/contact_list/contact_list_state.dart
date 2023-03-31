part of 'contact_list_bloc.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState.initial(
      [@Default([]) List<Contact> contacts]) = _Initial;

  const factory ContactListState.loadInProgress(List<Contact> contacts) =
      _LoadInProgress;

  const factory ContactListState.loadSuccess(List<Contact> contacts) =
      _LoadSuccess;

  const factory ContactListState.loadFailure(Failure failure,
      [@Default([]) List<Contact> contacts]) = _LoadFailure;

  const factory ContactListState.startVideoCallFailure(
          String errorMessage, DateTime lastTryDate, List<Contact> contacts) =
      _StartVideoCallFailure;

  const factory ContactListState.startVideoCallSuccess(
    List<Contact> contacts, {
    required Contact selectedContact,
    required DateTime calledAt,
  }) = _StartVideoCallSuccess;
}
