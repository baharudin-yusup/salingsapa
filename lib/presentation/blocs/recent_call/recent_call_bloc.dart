import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../domain/entities/call_info.dart';
import '../../../domain/entities/room.dart';
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

  RecentCallBloc(
    this._getRecentCall,
    this._navigatorService,
    this._streamVideoCallInvitations,
  ) : super(const RecentCallState.initial()) {
    on<_Started>(_getInitialData);
    on<_RefreshPulled>(_refreshData);
    on<_NewCallTapped>(_openContactListScreen);
  }

  void _getInitialData(_Started event, Emitter<RecentCallState> emit) {
    _fetchData(emit);
  }

  void _refreshData(_RefreshPulled event, Emitter<RecentCallState> emit) {
    emit(RecentCallState.refreshInProgress(state.invitations, state.calls));
    _fetchData(emit);
  }

  void _fetchData(Emitter<RecentCallState> emit) async {
    final result = await _getRecentCall();
    final calls = result.fold(
      (failure) {
        emit(RecentCallState.refreshFailure(state.invitations, state.calls,
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
}
