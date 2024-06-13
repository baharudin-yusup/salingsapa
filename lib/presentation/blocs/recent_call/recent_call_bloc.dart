import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failure.dart';
import '../../../domain/entities/call_info.dart';
import '../../../domain/entities/invitation.dart';
import '../../../domain/entities/room.dart';
import '../../../domain/usecases/accept_invitation.dart';
import '../../../domain/usecases/get_recent_call.dart';
import '../../../domain/usecases/stream_video_call_invitations.dart';
import '../../screens/home/contact_list_screen.dart';
import '../../services/navigator_service.dart';

part 'recent_call_bloc.freezed.dart';

part 'recent_call_event.dart';

part 'recent_call_state.dart';

class RecentCallBloc extends Bloc<RecentCallEvent, RecentCallState> {
  final GetRecentCall _getRecentCall;
  final NavigatorService _navigatorService;
  final StreamVideoCallInvitations _streamVideoCallInvitations;
  final AcceptInvitation _acceptInvitation;

  RecentCallBloc(
    this._getRecentCall,
    this._navigatorService,
    this._streamVideoCallInvitations,
    this._acceptInvitation,
  ) : super(const RecentCallState.initial()) {
    on<_Started>(_getInitialData);
    on<_RefreshPulled>(_refreshData);
    on<_NewCallTapped>(_openContactListScreen);
    on<_InvitationAccepted>(_startAcceptInvitation);
  }

  void _getInitialData(_Started event, Emitter<RecentCallState> emit) {
    _fetchData(emit);
  }

  void _refreshData(_RefreshPulled event, Emitter<RecentCallState> emit) {
    emit(RecentCallState.actionInProgress(state.invitations, state.calls));
    _fetchData(emit);
  }

  void _fetchData(Emitter<RecentCallState> emit) async {
    final result = await _getRecentCall();
    final calls = result.fold(
      (failure) {
        emit(RecentCallState.actionFailure(state.invitations, state.calls,
            failure: failure));
        return null;
      },
      (calls) => calls,
    );

    if (calls == null) {
      return;
    }

    final invitations = _streamVideoCallInvitations();
    emit(RecentCallState.refreshSuccess(invitations, calls));
  }

  void _openContactListScreen(
      _NewCallTapped event, Emitter<RecentCallState> emit) {
    _navigatorService.pushNamed(ContactListScreen.routeName);
  }

  void _startAcceptInvitation(
      _InvitationAccepted event, Emitter<RecentCallState> emit) async {
    state.maybeWhen(
      initial: (invitations, calls) {
        emit(RecentCallState.actionInProgress(invitations, calls));
      },
      acceptInvitationSuccess: (invitations, calls, _) {
        emit(RecentCallState.actionInProgress(invitations, calls));
      },
      refreshSuccess: (invitations, calls) {
        emit(RecentCallState.actionInProgress(invitations, calls));
      },
      actionFailure: (invitations, calls, _) {
        emit(RecentCallState.actionInProgress(invitations, calls));
      },
      orElse: () {},
    );
    final acceptInvitationResult = await _acceptInvitation(event.invitation);
    acceptInvitationResult.fold((failure) {
      emit(RecentCallState.actionFailure(
        state.invitations,
        state.calls,
        failure: failure,
      ));
    }, (room) {
      emit(RecentCallState.acceptInvitationSuccess(
          state.invitations, state.calls, room));
    });
  }
}
