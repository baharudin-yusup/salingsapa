import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/domain/entities/app_permission.dart';

import '../../../domain/entities/contact.dart';
import '../../../domain/usecases/has_permission.dart';
import '../../../domain/usecases/refresh_contact_list.dart';
import '../../../domain/usecases/request_permission.dart';
import '../../../domain/usecases/start_video_call.dart';

part 'contact_list_bloc.freezed.dart';
part 'contact_list_event.dart';
part 'contact_list_state.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final RefreshContactList _refreshContactList;
  final StartVideoCall _startVideoCall;
  final HasPermission _hasPermission;
  final RequestPermission _requestPermission;

  ContactListBloc(this._refreshContactList, this._startVideoCall,
      this._hasPermission, this._requestPermission)
      : super(const ContactListState.initial()) {
    on<_RefreshPulled>(_doRefreshContactList);
    on<_SelectedContactCalled>(_doVideoCall);
  }

  void _doRefreshContactList(
      _RefreshPulled event, Emitter<ContactListState> emit) async {
    final checkPermission = await _hasPermission(AppPermission.accessContact);

    if (checkPermission.isLeft()) {
      emit(ContactListState.loadFailure(UnknownFailure(), state.contacts));
      return;
    }

    if (!checkPermission.getOrElse(() => false)) {
      final requestPermission =
          await _requestPermission(AppPermission.accessContact);

      if (requestPermission.isLeft() ||
          !requestPermission.getOrElse(() => false)) {
        emit(ContactListState.loadFailure(UnknownFailure(), state.contacts));
        return;
      }
    }

    final refreshContactListResult = await _refreshContactList();
    refreshContactListResult.fold(
        (failure) =>
            emit(ContactListState.loadFailure(failure, state.contacts)),
        (contacts) => emit(ContactListState.loadSuccess(contacts)));
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

    emit(ContactListState.startVideoCallSuccess(state.contacts));
  }
}
