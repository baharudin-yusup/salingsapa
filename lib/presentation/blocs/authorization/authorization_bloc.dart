import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/domain/entities/auth_status.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/usecases/authorization_status.dart';

part 'authorization_bloc.freezed.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final GetAuthStatus _getAuthStatus;

  AuthorizationBloc(this._getAuthStatus)
      : super(const AuthorizationState.initial()) {
    on<_AuthStatusChanged>(_onAuthStatusChanged);

    _getAuthStatus().listen((status) {
      status.fold(
          (failure) =>
              add(AuthorizationEvent.authStatusChanged(failure: failure)),
          (status) =>
              add(AuthorizationEvent.authStatusChanged(status: status)));
    });
  }

  void _onAuthStatusChanged(
      _AuthStatusChanged event, Emitter<AuthorizationState> emit) {
    final failure = event.failure;
    if (failure != null) {
      Logger.print('Current authorization status: $failure');
      emit(AuthorizationState.changeAuthStatusFailure(failure));
    }

    final status = event.status;
    if (status != null) {
      Logger.print('Current authorization status: $status');
      emit(AuthorizationState.changeAuthStatusSuccess(status));
    }
  }
}
