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
}
