import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failure.dart';
import '../../../domain/entities/app_permission.dart';
import '../../../domain/entities/contact.dart';
import '../../../domain/usecases/get_current_user.dart';
import '../../../domain/usecases/has_permission.dart';
import '../../../domain/usecases/init_contact.dart';
import '../../../domain/usecases/refresh_contact_list.dart';
import '../../../domain/usecases/request_permission.dart';

part 'contact_list_bloc.freezed.dart';

part 'contact_list_event.dart';

part 'contact_list_state.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final RefreshContactList _refreshContactList;
  final HasPermission _hasPermission;
  final RequestPermission _requestPermission;
  final GetCurrentUser _getCurrentUser;
  final InitContact _initContact;

  ContactListBloc(
    this._refreshContactList,
    this._hasPermission,
    this._requestPermission,
    this._getCurrentUser,
    this._initContact,
  ) : super(const ContactListState.initial()) {
    on<_InitStarted>(_initializeContactFeature);
    on<_RefreshPulled>(_doRefreshContactList);
    on<_RequestPermissionStarted>(_onStartRequestPermission);
    on<_SelectedContactCalled>(_doVideoCall);
  }

  void _initializeContactFeature(
      _InitStarted event, Emitter<ContactListState> emit) async {
    await _initContact();
  }

  void _doRefreshContactList(
      _RefreshPulled event, Emitter<ContactListState> emit) async {
    final checkPermissionResult =
        await _hasPermission(AppPermission.accessContact);
    final isPreConditionValid = checkPermissionResult.fold(
      (failure) {
        emit(ContactListState.loadFailure(failure,
            contacts: state.contacts, isPermissionValid: false));
        return false;
      },
      (isGranted) {
        emit(ContactListState.loadInProgress(state.contacts, true));
        return true;
      },
    );
    if (!isPreConditionValid) {
      return;
    }

    final refreshContactListResult = await _refreshContactList();
    refreshContactListResult.fold(
      (failure) {
        if (isClosed) return;
        emit(ContactListState.loadFailure(failure,
            contacts: state.contacts,
            isPermissionValid: state.isPermissionValid ?? false));
      },
      (contacts) {
        if (isClosed) return;
        emit(ContactListState.loadSuccess(
            contacts, state.isPermissionValid ?? false));
      },
    );
  }

  void _onStartRequestPermission(
      _RequestPermissionStarted event, Emitter<ContactListState> emit) async {
    final isPreConditionValid = state.when(
      initial: (contacts, isPermissionValid) {
        if (!(isPermissionValid ?? false)) {
          return true;
        }
        return false;
      },
      loadInProgress: (contacts, isPermissionValid) {
        return false;
      },
      loadSuccess: (contacts, isPermissionValid) {
        if (!(isPermissionValid)) {
          return true;
        }
        return false;
      },
      loadFailure: (failure, contacts, isPermissionValid) {
        if (!(isPermissionValid)) {
          return true;
        }
        return false;
      },
      startVideoCallFailure:
          (errorMessage, lastTryDate, contacts, isPermissionValid) {
        if (!(isPermissionValid)) {
          return true;
        }
        return false;
      },
      startVideoCallSuccess:
          (contacts, selectedContact, calledAt, isPermissionValid) {
        return false;
      },
    );
    if (!isPreConditionValid) {
      return;
    }

    final requestPermissionResult =
        await _requestPermission(AppPermission.accessContact);

    requestPermissionResult.fold(
      (failure) => emit(ContactListState.loadFailure(failure,
          contacts: state.contacts, isPermissionValid: false)),
      (isGranted) {
        if (isGranted ?? false) {
          return;
        }
        add(const ContactListEvent.refreshPulled());
      },
    );
  }

  void _doVideoCall(
      _SelectedContactCalled event, Emitter<ContactListState> emit) async {
    final contact = event.contact;
    if (!contact.isRegistered) {
      emit(ContactListState.startVideoCallFailure(
          errorMessage:
              'This number ${contact.phoneNumber} has not been registered.',
          lastTryDate: DateTime.now().toLocal(),
          contacts: state.contacts,
          isPermissionValid: state.isPermissionValid ?? false));
      return;
    }

    final getCurrentUserResult = await _getCurrentUser();
    getCurrentUserResult.fold(
      (_) => emit(ContactListState.startVideoCallFailure(
          errorMessage: 'Unknown error',
          lastTryDate: DateTime.now().toLocal(),
          contacts: state.contacts,
          isPermissionValid: state.isPermissionValid ?? false)),
      (user) {
        if (user.phoneNumber == contact.phoneNumber.raw) {
          emit(
            ContactListState.startVideoCallFailure(
                errorMessage: 'You cannot call yourself',
                lastTryDate: DateTime.now().toLocal(),
                contacts: state.contacts,
                isPermissionValid: state.isPermissionValid ?? false),
          );
          return;
        }
        emit(
          ContactListState.startVideoCallSuccess(state.contacts,
              selectedContact: contact,
              calledAt: DateTime.now(),
              isPermissionValid: state.isPermissionValid ?? false),
        );
      },
    );
  }
}
