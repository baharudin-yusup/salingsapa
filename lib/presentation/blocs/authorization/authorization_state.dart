part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.initial() = _Initial;

  const factory AuthorizationState.changeAuthStatusSuccess(AuthStatus status) =
      _ChangeAuthStatusSuccess;

  const factory AuthorizationState.changeAuthStatusFailure(Failure failure) =
      _ChangeAuthStatusFailure;
}
