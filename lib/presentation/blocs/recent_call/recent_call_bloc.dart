import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/presentation/screens/home/contact_list_screen.dart';

import '../../../domain/entities/call_info.dart';
import '../../../domain/usecases/get_recent_call.dart';
import '../../services/navigator_service.dart';

part 'recent_call_bloc.freezed.dart';
part 'recent_call_event.dart';
part 'recent_call_state.dart';

class RecentCallBloc extends Bloc<RecentCallEvent, RecentCallState> {
  final GetRecentCall _getRecentCall;
  final NavigatorService _navigatorService;

  RecentCallBloc(
    this._getRecentCall,
    this._navigatorService,
  ) : super(const RecentCallState.initial()) {
    on<_Started>(_getInitialData);
    on<_RefreshPulled>(_refreshData);
    on<_NewCallTapped>(_openContactListScreen);
  }

  void _getInitialData(_Started event, Emitter<RecentCallState> emit) {
    _fetchData(emit);
  }

  void _refreshData(_RefreshPulled event, Emitter<RecentCallState> emit) {
    emit(RecentCallState.refreshInProgress(state.calls));
    _fetchData(emit);
  }

  void _fetchData(Emitter<RecentCallState> emit) async {
    final result = await _getRecentCall();

    result.fold(
      (failure) => emit(
        RecentCallState.refreshFailure(state.calls, failure: failure),
      ),
      (calls) => emit(
        RecentCallState.refreshSuccess(calls),
      ),
    );
  }

  void _openContactListScreen(
      _NewCallTapped event, Emitter<RecentCallState> emit) {
    _navigatorService.pushNamed(ContactListScreen.routeName);
  }
}
