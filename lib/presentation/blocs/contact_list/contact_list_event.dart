part of 'contact_list_bloc.dart';

@freezed
class ContactListEvent with _$ContactListEvent {
  const factory ContactListEvent.refreshPulled() = _RefreshPulled;

  const factory ContactListEvent.requestPermissionStarted() =
      _RequestPermissionStarted;

  const factory ContactListEvent.selectedContactCalled(Contact contact) =
      _SelectedContactCalled;
}
