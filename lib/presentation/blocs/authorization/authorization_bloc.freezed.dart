// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthStatus? status, Failure? failure)
        authStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthStatus? status, Failure? failure)? authStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthStatus? status, Failure? failure)? authStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AuthStatusChanged value) authStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AuthStatusChanged value)? authStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res, AuthorizationEvent>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res, $Val extends AuthorizationEvent>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthorizationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthStatus? status, Failure? failure)
        authStatusChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthStatus? status, Failure? failure)? authStatusChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthStatus? status, Failure? failure)? authStatusChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AuthStatusChanged value) authStatusChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AuthStatusChanged value)? authStatusChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthorizationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AuthStatusChangedCopyWith<$Res> {
  factory _$$_AuthStatusChangedCopyWith(_$_AuthStatusChanged value,
          $Res Function(_$_AuthStatusChanged) then) =
      __$$_AuthStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStatus? status, Failure? failure});
}

/// @nodoc
class __$$_AuthStatusChangedCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$_AuthStatusChanged>
    implements _$$_AuthStatusChangedCopyWith<$Res> {
  __$$_AuthStatusChangedCopyWithImpl(
      _$_AuthStatusChanged _value, $Res Function(_$_AuthStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_AuthStatusChanged(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_AuthStatusChanged implements _AuthStatusChanged {
  const _$_AuthStatusChanged({this.status, this.failure});

  @override
  final AuthStatus? status;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AuthorizationEvent.authStatusChanged(status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStatusChanged &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStatusChangedCopyWith<_$_AuthStatusChanged> get copyWith =>
      __$$_AuthStatusChangedCopyWithImpl<_$_AuthStatusChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AuthStatus? status, Failure? failure)
        authStatusChanged,
  }) {
    return authStatusChanged(status, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AuthStatus? status, Failure? failure)? authStatusChanged,
  }) {
    return authStatusChanged?.call(status, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AuthStatus? status, Failure? failure)? authStatusChanged,
    required TResult orElse(),
  }) {
    if (authStatusChanged != null) {
      return authStatusChanged(status, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AuthStatusChanged value) authStatusChanged,
  }) {
    return authStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AuthStatusChanged value)? authStatusChanged,
  }) {
    return authStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    required TResult orElse(),
  }) {
    if (authStatusChanged != null) {
      return authStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthStatusChanged implements AuthorizationEvent {
  const factory _AuthStatusChanged(
      {final AuthStatus? status,
      final Failure? failure}) = _$_AuthStatusChanged;

  AuthStatus? get status;
  Failure? get failure;
  @JsonKey(ignore: true)
  _$$_AuthStatusChangedCopyWith<_$_AuthStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthStatus status) changeAuthStatusSuccess,
    required TResult Function(Failure failure) changeAuthStatusFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult? Function(Failure failure)? changeAuthStatusFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult Function(Failure failure)? changeAuthStatusFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeAuthStatusSuccess value)
        changeAuthStatusSuccess,
    required TResult Function(_ChangeAuthStatusFailure value)
        changeAuthStatusFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeAuthStatusSuccess value)? changeAuthStatusSuccess,
    TResult? Function(_ChangeAuthStatusFailure value)? changeAuthStatusFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeAuthStatusSuccess value)? changeAuthStatusSuccess,
    TResult Function(_ChangeAuthStatusFailure value)? changeAuthStatusFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res, AuthorizationState>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthorizationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthStatus status) changeAuthStatusSuccess,
    required TResult Function(Failure failure) changeAuthStatusFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult? Function(Failure failure)? changeAuthStatusFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult Function(Failure failure)? changeAuthStatusFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeAuthStatusSuccess value)
        changeAuthStatusSuccess,
    required TResult Function(_ChangeAuthStatusFailure value)
        changeAuthStatusFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeAuthStatusSuccess value)? changeAuthStatusSuccess,
    TResult? Function(_ChangeAuthStatusFailure value)? changeAuthStatusFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeAuthStatusSuccess value)? changeAuthStatusSuccess,
    TResult Function(_ChangeAuthStatusFailure value)? changeAuthStatusFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthorizationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ChangeAuthStatusSuccessCopyWith<$Res> {
  factory _$$_ChangeAuthStatusSuccessCopyWith(_$_ChangeAuthStatusSuccess value,
          $Res Function(_$_ChangeAuthStatusSuccess) then) =
      __$$_ChangeAuthStatusSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStatus status});
}

/// @nodoc
class __$$_ChangeAuthStatusSuccessCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_ChangeAuthStatusSuccess>
    implements _$$_ChangeAuthStatusSuccessCopyWith<$Res> {
  __$$_ChangeAuthStatusSuccessCopyWithImpl(_$_ChangeAuthStatusSuccess _value,
      $Res Function(_$_ChangeAuthStatusSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_ChangeAuthStatusSuccess(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$_ChangeAuthStatusSuccess implements _ChangeAuthStatusSuccess {
  const _$_ChangeAuthStatusSuccess(this.status);

  @override
  final AuthStatus status;

  @override
  String toString() {
    return 'AuthorizationState.changeAuthStatusSuccess(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAuthStatusSuccess &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAuthStatusSuccessCopyWith<_$_ChangeAuthStatusSuccess>
      get copyWith =>
          __$$_ChangeAuthStatusSuccessCopyWithImpl<_$_ChangeAuthStatusSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthStatus status) changeAuthStatusSuccess,
    required TResult Function(Failure failure) changeAuthStatusFailure,
  }) {
    return changeAuthStatusSuccess(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult? Function(Failure failure)? changeAuthStatusFailure,
  }) {
    return changeAuthStatusSuccess?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult Function(Failure failure)? changeAuthStatusFailure,
    required TResult orElse(),
  }) {
    if (changeAuthStatusSuccess != null) {
      return changeAuthStatusSuccess(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeAuthStatusSuccess value)
        changeAuthStatusSuccess,
    required TResult Function(_ChangeAuthStatusFailure value)
        changeAuthStatusFailure,
  }) {
    return changeAuthStatusSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeAuthStatusSuccess value)? changeAuthStatusSuccess,
    TResult? Function(_ChangeAuthStatusFailure value)? changeAuthStatusFailure,
  }) {
    return changeAuthStatusSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeAuthStatusSuccess value)? changeAuthStatusSuccess,
    TResult Function(_ChangeAuthStatusFailure value)? changeAuthStatusFailure,
    required TResult orElse(),
  }) {
    if (changeAuthStatusSuccess != null) {
      return changeAuthStatusSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeAuthStatusSuccess implements AuthorizationState {
  const factory _ChangeAuthStatusSuccess(final AuthStatus status) =
      _$_ChangeAuthStatusSuccess;

  AuthStatus get status;
  @JsonKey(ignore: true)
  _$$_ChangeAuthStatusSuccessCopyWith<_$_ChangeAuthStatusSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeAuthStatusFailureCopyWith<$Res> {
  factory _$$_ChangeAuthStatusFailureCopyWith(_$_ChangeAuthStatusFailure value,
          $Res Function(_$_ChangeAuthStatusFailure) then) =
      __$$_ChangeAuthStatusFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$_ChangeAuthStatusFailureCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_ChangeAuthStatusFailure>
    implements _$$_ChangeAuthStatusFailureCopyWith<$Res> {
  __$$_ChangeAuthStatusFailureCopyWithImpl(_$_ChangeAuthStatusFailure _value,
      $Res Function(_$_ChangeAuthStatusFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_ChangeAuthStatusFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_ChangeAuthStatusFailure implements _ChangeAuthStatusFailure {
  const _$_ChangeAuthStatusFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthorizationState.changeAuthStatusFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAuthStatusFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAuthStatusFailureCopyWith<_$_ChangeAuthStatusFailure>
      get copyWith =>
          __$$_ChangeAuthStatusFailureCopyWithImpl<_$_ChangeAuthStatusFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthStatus status) changeAuthStatusSuccess,
    required TResult Function(Failure failure) changeAuthStatusFailure,
  }) {
    return changeAuthStatusFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult? Function(Failure failure)? changeAuthStatusFailure,
  }) {
    return changeAuthStatusFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult Function(Failure failure)? changeAuthStatusFailure,
    required TResult orElse(),
  }) {
    if (changeAuthStatusFailure != null) {
      return changeAuthStatusFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeAuthStatusSuccess value)
        changeAuthStatusSuccess,
    required TResult Function(_ChangeAuthStatusFailure value)
        changeAuthStatusFailure,
  }) {
    return changeAuthStatusFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeAuthStatusSuccess value)? changeAuthStatusSuccess,
    TResult? Function(_ChangeAuthStatusFailure value)? changeAuthStatusFailure,
  }) {
    return changeAuthStatusFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeAuthStatusSuccess value)? changeAuthStatusSuccess,
    TResult Function(_ChangeAuthStatusFailure value)? changeAuthStatusFailure,
    required TResult orElse(),
  }) {
    if (changeAuthStatusFailure != null) {
      return changeAuthStatusFailure(this);
    }
    return orElse();
  }
}

abstract class _ChangeAuthStatusFailure implements AuthorizationState {
  const factory _ChangeAuthStatusFailure(final Failure failure) =
      _$_ChangeAuthStatusFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ChangeAuthStatusFailureCopyWith<_$_ChangeAuthStatusFailure>
      get copyWith => throw _privateConstructorUsedError;
}
