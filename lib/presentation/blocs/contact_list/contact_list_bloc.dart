import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../data/extensions/to_phone_number.dart';
import '../../../domain/entities/app_permission.dart';
import '../../../domain/entities/contact.dart';
import '../../../domain/usecases/get_current_user.dart';
import '../../../domain/usecases/has_permission.dart';
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

  ContactListBloc(this._refreshContactList, this._hasPermission,
      this._requestPermission, this._getCurrentUser)
      : super(const ContactListState.initial()) {
    on<_RefreshPulled>(_doRefreshContactList);
    on<_SelectedContactCalled>(_doVideoCall);
  }

  void _doRefreshContactList(
      _RefreshPulled event, Emitter<ContactListState> emit) async {
    final checkPermission = await _hasPermission(AppPermission.accessContact);

    if (checkPermission.isLeft()) {
      if (isClosed) return;
      emit(
          ContactListState.loadFailure(const UnknownFailure(), state.contacts));
      return;
    }

    if (!checkPermission.getOrElse(() => false)) {
      final requestPermission =
          await _requestPermission(AppPermission.accessContact);

      if (requestPermission.isLeft() ||
          !requestPermission.getOrElse(() => false)) {
        if (isClosed) return;
        emit(ContactListState.loadFailure(
            UnknownFailure(createdAt: DateTime.now()), state.contacts));
        return;
      }
    }

    final refreshContactListResult = await _refreshContactList();
    refreshContactListResult.fold(
      (failure) {
        if (isClosed) return;
        emit(ContactListState.loadFailure(failure, state.contacts));
      },
      (contacts) {
        if (isClosed) return;
        emit(ContactListState.loadSuccess(contacts));
      },
    );
  }

  void _doVideoCall(
      _SelectedContactCalled event, Emitter<ContactListState> emit) async {
    final contact = event.contact;
    if (!contact.isRegistered) {
      emit(ContactListState.startVideoCallFailure(
          'This number ${contact.phoneNumber} has not been registered.',
          DateTime.now().toLocal(),
          state.contacts));
      return;
    }

    final getCurrentUserResult = await _getCurrentUser();
    getCurrentUserResult.fold(
      (_) => emit(ContactListState.startVideoCallFailure(
          'Unknown error', DateTime.now().toLocal(), state.contacts)),
      (user) {
        if (user.phoneNumber.toFormattedPhoneNumber() ==
            contact.phoneNumber.toFormattedPhoneNumber()) {
          emit(ContactListState.startVideoCallFailure(
              'You cannot call yourself',
              DateTime.now().toLocal(),
              state.contacts));
          return;
        }
        emit(ContactListState.startVideoCallSuccess(
          state.contacts,
          selectedContact: contact,
          calledAt: DateTime.now(),
        ));
      },
    );
  }
}
