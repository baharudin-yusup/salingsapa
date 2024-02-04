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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthorizationEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
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
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AuthStatusChangedImplCopyWith<$Res> {
  factory _$$AuthStatusChangedImplCopyWith(_$AuthStatusChangedImpl value,
          $Res Function(_$AuthStatusChangedImpl) then) =
      __$$AuthStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStatus? status, Failure? failure});
}

/// @nodoc
class __$$AuthStatusChangedImplCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$AuthStatusChangedImpl>
    implements _$$AuthStatusChangedImplCopyWith<$Res> {
  __$$AuthStatusChangedImplCopyWithImpl(_$AuthStatusChangedImpl _value,
      $Res Function(_$AuthStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$AuthStatusChangedImpl(
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

class _$AuthStatusChangedImpl implements _AuthStatusChanged {
  const _$AuthStatusChangedImpl({this.status, this.failure});

  @override
  final AuthStatus? status;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AuthorizationEvent.authStatusChanged(status: $status, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusChangedImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusChangedImplCopyWith<_$AuthStatusChangedImpl> get copyWith =>
      __$$AuthStatusChangedImplCopyWithImpl<_$AuthStatusChangedImpl>(
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
      final Failure? failure}) = _$AuthStatusChangedImpl;

  AuthStatus? get status;
  Failure? get failure;
  @JsonKey(ignore: true)
  _$$AuthStatusChangedImplCopyWith<_$AuthStatusChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatus status) initial,
    required TResult Function(AuthStatus status) changeAuthStatusSuccess,
    required TResult Function(Failure failure) changeAuthStatusFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatus status)? initial,
    TResult? Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult? Function(Failure failure)? changeAuthStatusFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatus status)? initial,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStatus status});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$InitialImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl([this.status = AuthStatus.unauthorized]);

  @override
  @JsonKey()
  final AuthStatus status;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatus status) initial,
    required TResult Function(AuthStatus status) changeAuthStatusSuccess,
    required TResult Function(Failure failure) changeAuthStatusFailure,
  }) {
    return initial(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatus status)? initial,
    TResult? Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult? Function(Failure failure)? changeAuthStatusFailure,
  }) {
    return initial?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatus status)? initial,
    TResult Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult Function(Failure failure)? changeAuthStatusFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status);
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
  const factory _Initial([final AuthStatus status]) = _$InitialImpl;

  AuthStatus get status;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAuthStatusSuccessImplCopyWith<$Res> {
  factory _$$ChangeAuthStatusSuccessImplCopyWith(
          _$ChangeAuthStatusSuccessImpl value,
          $Res Function(_$ChangeAuthStatusSuccessImpl) then) =
      __$$ChangeAuthStatusSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStatus status});
}

/// @nodoc
class __$$ChangeAuthStatusSuccessImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$ChangeAuthStatusSuccessImpl>
    implements _$$ChangeAuthStatusSuccessImplCopyWith<$Res> {
  __$$ChangeAuthStatusSuccessImplCopyWithImpl(
      _$ChangeAuthStatusSuccessImpl _value,
      $Res Function(_$ChangeAuthStatusSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ChangeAuthStatusSuccessImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$ChangeAuthStatusSuccessImpl implements _ChangeAuthStatusSuccess {
  const _$ChangeAuthStatusSuccessImpl(this.status);

  @override
  final AuthStatus status;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAuthStatusSuccessImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAuthStatusSuccessImplCopyWith<_$ChangeAuthStatusSuccessImpl>
      get copyWith => __$$ChangeAuthStatusSuccessImplCopyWithImpl<
          _$ChangeAuthStatusSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatus status) initial,
    required TResult Function(AuthStatus status) changeAuthStatusSuccess,
    required TResult Function(Failure failure) changeAuthStatusFailure,
  }) {
    return changeAuthStatusSuccess(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatus status)? initial,
    TResult? Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult? Function(Failure failure)? changeAuthStatusFailure,
  }) {
    return changeAuthStatusSuccess?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatus status)? initial,
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
      _$ChangeAuthStatusSuccessImpl;

  AuthStatus get status;
  @JsonKey(ignore: true)
  _$$ChangeAuthStatusSuccessImplCopyWith<_$ChangeAuthStatusSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAuthStatusFailureImplCopyWith<$Res> {
  factory _$$ChangeAuthStatusFailureImplCopyWith(
          _$ChangeAuthStatusFailureImpl value,
          $Res Function(_$ChangeAuthStatusFailureImpl) then) =
      __$$ChangeAuthStatusFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ChangeAuthStatusFailureImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$ChangeAuthStatusFailureImpl>
    implements _$$ChangeAuthStatusFailureImplCopyWith<$Res> {
  __$$ChangeAuthStatusFailureImplCopyWithImpl(
      _$ChangeAuthStatusFailureImpl _value,
      $Res Function(_$ChangeAuthStatusFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ChangeAuthStatusFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ChangeAuthStatusFailureImpl implements _ChangeAuthStatusFailure {
  const _$ChangeAuthStatusFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAuthStatusFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAuthStatusFailureImplCopyWith<_$ChangeAuthStatusFailureImpl>
      get copyWith => __$$ChangeAuthStatusFailureImplCopyWithImpl<
          _$ChangeAuthStatusFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatus status) initial,
    required TResult Function(AuthStatus status) changeAuthStatusSuccess,
    required TResult Function(Failure failure) changeAuthStatusFailure,
  }) {
    return changeAuthStatusFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatus status)? initial,
    TResult? Function(AuthStatus status)? changeAuthStatusSuccess,
    TResult? Function(Failure failure)? changeAuthStatusFailure,
  }) {
    return changeAuthStatusFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatus status)? initial,
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
      _$ChangeAuthStatusFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ChangeAuthStatusFailureImplCopyWith<_$ChangeAuthStatusFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
