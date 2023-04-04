import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/entities/auth_status.dart';
import '../../../domain/usecases/authorization_status.dart';
import '../../../domain/usecases/stream_current_user.dart';

part 'authorization_bloc.freezed.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final GetAuthStatus _getAuthStatus;
  final StreamCurrentUser _streamCurrentUser;

  AuthorizationBloc(this._getAuthStatus, this._streamCurrentUser)
      : super(const AuthorizationState.initial()) {
    on<_AuthStatusChanged>(_onAuthStatusChanged);

    _getAuthStatus().listen((status) {
      status.fold(
          (failure) =>
              add(AuthorizationEvent.authStatusChanged(failure: failure)),
          (status) =>
              add(AuthorizationEvent.authStatusChanged(status: status)));
    });

    _streamCurrentUser().listen((result) {
      result.fold(
        (_) => add(const AuthorizationEvent.authStatusChanged(
            status: AuthStatus.unauthorized)),
        (_) => add(const AuthorizationEvent.authStatusChanged(
            status: AuthStatus.authorized)),
      );
    });
  }

  void _onAuthStatusChanged(
      _AuthStatusChanged event, Emitter<AuthorizationState> emit) {
    final failure = event.failure;
    if (failure != null) {
      Logger.print('(bloc) current authorization status: $failure');
      emit(AuthorizationState.changeAuthStatusFailure(failure));
    }

    final newStatus = event.status;

    if (newStatus != null) {
      Logger.print('(bloc) current authorization status: $newStatus');
      emit(AuthorizationState.changeAuthStatusSuccess(newStatus));
    }
  }
}
