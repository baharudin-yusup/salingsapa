// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoCallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinChannelStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinChannelStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinChannelStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JoinChannelStarted value) joinChannelStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JoinChannelStarted value)? joinChannelStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JoinChannelStarted value)? joinChannelStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallEventCopyWith<$Res> {
  factory $VideoCallEventCopyWith(
          VideoCallEvent value, $Res Function(VideoCallEvent) then) =
      _$VideoCallEventCopyWithImpl<$Res, VideoCallEvent>;
}

/// @nodoc
class _$VideoCallEventCopyWithImpl<$Res, $Val extends VideoCallEvent>
    implements $VideoCallEventCopyWith<$Res> {
  _$VideoCallEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_JoinChannelStartedCopyWith<$Res> {
  factory _$$_JoinChannelStartedCopyWith(_$_JoinChannelStarted value,
          $Res Function(_$_JoinChannelStarted) then) =
      __$$_JoinChannelStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JoinChannelStartedCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$_JoinChannelStarted>
    implements _$$_JoinChannelStartedCopyWith<$Res> {
  __$$_JoinChannelStartedCopyWithImpl(
      _$_JoinChannelStarted _value, $Res Function(_$_JoinChannelStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_JoinChannelStarted implements _JoinChannelStarted {
  const _$_JoinChannelStarted();

  @override
  String toString() {
    return 'VideoCallEvent.joinChannelStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JoinChannelStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinChannelStarted,
  }) {
    return joinChannelStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinChannelStarted,
  }) {
    return joinChannelStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinChannelStarted,
    required TResult orElse(),
  }) {
    if (joinChannelStarted != null) {
      return joinChannelStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JoinChannelStarted value) joinChannelStarted,
  }) {
    return joinChannelStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JoinChannelStarted value)? joinChannelStarted,
  }) {
    return joinChannelStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JoinChannelStarted value)? joinChannelStarted,
    required TResult orElse(),
  }) {
    if (joinChannelStarted != null) {
      return joinChannelStarted(this);
    }
    return orElse();
  }
}

abstract class _JoinChannelStarted implements VideoCallEvent {
  const factory _JoinChannelStarted() = _$_JoinChannelStarted;
}

/// @nodoc
mixin _$VideoCallState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() joinChannelInProgress,
    required TResult Function() joinChannelSuccess,
    required TResult Function() joinChannelFailure,
    required TResult Function() remoteUserJoinInProgress,
    required TResult Function(String remoteUserUid) remoteUserJoinSuccess,
    required TResult Function(String errorMessage) remoteUserJoinFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? joinChannelInProgress,
    TResult? Function()? joinChannelSuccess,
    TResult? Function()? joinChannelFailure,
    TResult? Function()? remoteUserJoinInProgress,
    TResult? Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult? Function(String errorMessage)? remoteUserJoinFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? joinChannelInProgress,
    TResult Function()? joinChannelSuccess,
    TResult Function()? joinChannelFailure,
    TResult Function()? remoteUserJoinInProgress,
    TResult Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult Function(String errorMessage)? remoteUserJoinFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_JoinChannelInProgress value)
        joinChannelInProgress,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinInProgress value)
        remoteUserJoinInProgress,
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinInProgress value)?
        remoteUserJoinInProgress,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinInProgress value)? remoteUserJoinInProgress,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallStateCopyWith<$Res> {
  factory $VideoCallStateCopyWith(
          VideoCallState value, $Res Function(VideoCallState) then) =
      _$VideoCallStateCopyWithImpl<$Res, VideoCallState>;
}

/// @nodoc
class _$VideoCallStateCopyWithImpl<$Res, $Val extends VideoCallState>
    implements $VideoCallStateCopyWith<$Res> {
  _$VideoCallStateCopyWithImpl(this._value, this._then);

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
    extends _$VideoCallStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'VideoCallState.initial()';
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
    required TResult Function() joinChannelInProgress,
    required TResult Function() joinChannelSuccess,
    required TResult Function() joinChannelFailure,
    required TResult Function() remoteUserJoinInProgress,
    required TResult Function(String remoteUserUid) remoteUserJoinSuccess,
    required TResult Function(String errorMessage) remoteUserJoinFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? joinChannelInProgress,
    TResult? Function()? joinChannelSuccess,
    TResult? Function()? joinChannelFailure,
    TResult? Function()? remoteUserJoinInProgress,
    TResult? Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult? Function(String errorMessage)? remoteUserJoinFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? joinChannelInProgress,
    TResult Function()? joinChannelSuccess,
    TResult Function()? joinChannelFailure,
    TResult Function()? remoteUserJoinInProgress,
    TResult Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult Function(String errorMessage)? remoteUserJoinFailure,
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
    required TResult Function(_JoinChannelInProgress value)
        joinChannelInProgress,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinInProgress value)
        remoteUserJoinInProgress,
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinInProgress value)?
        remoteUserJoinInProgress,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinInProgress value)? remoteUserJoinInProgress,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoCallState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_JoinChannelInProgressCopyWith<$Res> {
  factory _$$_JoinChannelInProgressCopyWith(_$_JoinChannelInProgress value,
          $Res Function(_$_JoinChannelInProgress) then) =
      __$$_JoinChannelInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JoinChannelInProgressCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_JoinChannelInProgress>
    implements _$$_JoinChannelInProgressCopyWith<$Res> {
  __$$_JoinChannelInProgressCopyWithImpl(_$_JoinChannelInProgress _value,
      $Res Function(_$_JoinChannelInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_JoinChannelInProgress implements _JoinChannelInProgress {
  const _$_JoinChannelInProgress();

  @override
  String toString() {
    return 'VideoCallState.joinChannelInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JoinChannelInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() joinChannelInProgress,
    required TResult Function() joinChannelSuccess,
    required TResult Function() joinChannelFailure,
    required TResult Function() remoteUserJoinInProgress,
    required TResult Function(String remoteUserUid) remoteUserJoinSuccess,
    required TResult Function(String errorMessage) remoteUserJoinFailure,
  }) {
    return joinChannelInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? joinChannelInProgress,
    TResult? Function()? joinChannelSuccess,
    TResult? Function()? joinChannelFailure,
    TResult? Function()? remoteUserJoinInProgress,
    TResult? Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult? Function(String errorMessage)? remoteUserJoinFailure,
  }) {
    return joinChannelInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? joinChannelInProgress,
    TResult Function()? joinChannelSuccess,
    TResult Function()? joinChannelFailure,
    TResult Function()? remoteUserJoinInProgress,
    TResult Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult Function(String errorMessage)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (joinChannelInProgress != null) {
      return joinChannelInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_JoinChannelInProgress value)
        joinChannelInProgress,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinInProgress value)
        remoteUserJoinInProgress,
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
  }) {
    return joinChannelInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinInProgress value)?
        remoteUserJoinInProgress,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
  }) {
    return joinChannelInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinInProgress value)? remoteUserJoinInProgress,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (joinChannelInProgress != null) {
      return joinChannelInProgress(this);
    }
    return orElse();
  }
}

abstract class _JoinChannelInProgress implements VideoCallState {
  const factory _JoinChannelInProgress() = _$_JoinChannelInProgress;
}

/// @nodoc
abstract class _$$_JoinChannelSuccessCopyWith<$Res> {
  factory _$$_JoinChannelSuccessCopyWith(_$_JoinChannelSuccess value,
          $Res Function(_$_JoinChannelSuccess) then) =
      __$$_JoinChannelSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JoinChannelSuccessCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_JoinChannelSuccess>
    implements _$$_JoinChannelSuccessCopyWith<$Res> {
  __$$_JoinChannelSuccessCopyWithImpl(
      _$_JoinChannelSuccess _value, $Res Function(_$_JoinChannelSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_JoinChannelSuccess implements _JoinChannelSuccess {
  const _$_JoinChannelSuccess();

  @override
  String toString() {
    return 'VideoCallState.joinChannelSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JoinChannelSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() joinChannelInProgress,
    required TResult Function() joinChannelSuccess,
    required TResult Function() joinChannelFailure,
    required TResult Function() remoteUserJoinInProgress,
    required TResult Function(String remoteUserUid) remoteUserJoinSuccess,
    required TResult Function(String errorMessage) remoteUserJoinFailure,
  }) {
    return joinChannelSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? joinChannelInProgress,
    TResult? Function()? joinChannelSuccess,
    TResult? Function()? joinChannelFailure,
    TResult? Function()? remoteUserJoinInProgress,
    TResult? Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult? Function(String errorMessage)? remoteUserJoinFailure,
  }) {
    return joinChannelSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? joinChannelInProgress,
    TResult Function()? joinChannelSuccess,
    TResult Function()? joinChannelFailure,
    TResult Function()? remoteUserJoinInProgress,
    TResult Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult Function(String errorMessage)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (joinChannelSuccess != null) {
      return joinChannelSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_JoinChannelInProgress value)
        joinChannelInProgress,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinInProgress value)
        remoteUserJoinInProgress,
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
  }) {
    return joinChannelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinInProgress value)?
        remoteUserJoinInProgress,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
  }) {
    return joinChannelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinInProgress value)? remoteUserJoinInProgress,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (joinChannelSuccess != null) {
      return joinChannelSuccess(this);
    }
    return orElse();
  }
}

abstract class _JoinChannelSuccess implements VideoCallState {
  const factory _JoinChannelSuccess() = _$_JoinChannelSuccess;
}

/// @nodoc
abstract class _$$_JoinChannelFailureCopyWith<$Res> {
  factory _$$_JoinChannelFailureCopyWith(_$_JoinChannelFailure value,
          $Res Function(_$_JoinChannelFailure) then) =
      __$$_JoinChannelFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JoinChannelFailureCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_JoinChannelFailure>
    implements _$$_JoinChannelFailureCopyWith<$Res> {
  __$$_JoinChannelFailureCopyWithImpl(
      _$_JoinChannelFailure _value, $Res Function(_$_JoinChannelFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_JoinChannelFailure implements _JoinChannelFailure {
  const _$_JoinChannelFailure();

  @override
  String toString() {
    return 'VideoCallState.joinChannelFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JoinChannelFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() joinChannelInProgress,
    required TResult Function() joinChannelSuccess,
    required TResult Function() joinChannelFailure,
    required TResult Function() remoteUserJoinInProgress,
    required TResult Function(String remoteUserUid) remoteUserJoinSuccess,
    required TResult Function(String errorMessage) remoteUserJoinFailure,
  }) {
    return joinChannelFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? joinChannelInProgress,
    TResult? Function()? joinChannelSuccess,
    TResult? Function()? joinChannelFailure,
    TResult? Function()? remoteUserJoinInProgress,
    TResult? Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult? Function(String errorMessage)? remoteUserJoinFailure,
  }) {
    return joinChannelFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? joinChannelInProgress,
    TResult Function()? joinChannelSuccess,
    TResult Function()? joinChannelFailure,
    TResult Function()? remoteUserJoinInProgress,
    TResult Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult Function(String errorMessage)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (joinChannelFailure != null) {
      return joinChannelFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_JoinChannelInProgress value)
        joinChannelInProgress,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinInProgress value)
        remoteUserJoinInProgress,
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
  }) {
    return joinChannelFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinInProgress value)?
        remoteUserJoinInProgress,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
  }) {
    return joinChannelFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinInProgress value)? remoteUserJoinInProgress,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (joinChannelFailure != null) {
      return joinChannelFailure(this);
    }
    return orElse();
  }
}

abstract class _JoinChannelFailure implements VideoCallState {
  const factory _JoinChannelFailure() = _$_JoinChannelFailure;
}

/// @nodoc
abstract class _$$_RemoteUserJoinInProgressCopyWith<$Res> {
  factory _$$_RemoteUserJoinInProgressCopyWith(
          _$_RemoteUserJoinInProgress value,
          $Res Function(_$_RemoteUserJoinInProgress) then) =
      __$$_RemoteUserJoinInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoteUserJoinInProgressCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_RemoteUserJoinInProgress>
    implements _$$_RemoteUserJoinInProgressCopyWith<$Res> {
  __$$_RemoteUserJoinInProgressCopyWithImpl(_$_RemoteUserJoinInProgress _value,
      $Res Function(_$_RemoteUserJoinInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RemoteUserJoinInProgress implements _RemoteUserJoinInProgress {
  const _$_RemoteUserJoinInProgress();

  @override
  String toString() {
    return 'VideoCallState.remoteUserJoinInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteUserJoinInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() joinChannelInProgress,
    required TResult Function() joinChannelSuccess,
    required TResult Function() joinChannelFailure,
    required TResult Function() remoteUserJoinInProgress,
    required TResult Function(String remoteUserUid) remoteUserJoinSuccess,
    required TResult Function(String errorMessage) remoteUserJoinFailure,
  }) {
    return remoteUserJoinInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? joinChannelInProgress,
    TResult? Function()? joinChannelSuccess,
    TResult? Function()? joinChannelFailure,
    TResult? Function()? remoteUserJoinInProgress,
    TResult? Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult? Function(String errorMessage)? remoteUserJoinFailure,
  }) {
    return remoteUserJoinInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? joinChannelInProgress,
    TResult Function()? joinChannelSuccess,
    TResult Function()? joinChannelFailure,
    TResult Function()? remoteUserJoinInProgress,
    TResult Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult Function(String errorMessage)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinInProgress != null) {
      return remoteUserJoinInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_JoinChannelInProgress value)
        joinChannelInProgress,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinInProgress value)
        remoteUserJoinInProgress,
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
  }) {
    return remoteUserJoinInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinInProgress value)?
        remoteUserJoinInProgress,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
  }) {
    return remoteUserJoinInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinInProgress value)? remoteUserJoinInProgress,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinInProgress != null) {
      return remoteUserJoinInProgress(this);
    }
    return orElse();
  }
}

abstract class _RemoteUserJoinInProgress implements VideoCallState {
  const factory _RemoteUserJoinInProgress() = _$_RemoteUserJoinInProgress;
}

/// @nodoc
abstract class _$$_RemoteUserJoinSuccessCopyWith<$Res> {
  factory _$$_RemoteUserJoinSuccessCopyWith(_$_RemoteUserJoinSuccess value,
          $Res Function(_$_RemoteUserJoinSuccess) then) =
      __$$_RemoteUserJoinSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String remoteUserUid});
}

/// @nodoc
class __$$_RemoteUserJoinSuccessCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_RemoteUserJoinSuccess>
    implements _$$_RemoteUserJoinSuccessCopyWith<$Res> {
  __$$_RemoteUserJoinSuccessCopyWithImpl(_$_RemoteUserJoinSuccess _value,
      $Res Function(_$_RemoteUserJoinSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteUserUid = null,
  }) {
    return _then(_$_RemoteUserJoinSuccess(
      remoteUserUid: null == remoteUserUid
          ? _value.remoteUserUid
          : remoteUserUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoteUserJoinSuccess implements _RemoteUserJoinSuccess {
  const _$_RemoteUserJoinSuccess({required this.remoteUserUid});

  @override
  final String remoteUserUid;

  @override
  String toString() {
    return 'VideoCallState.remoteUserJoinSuccess(remoteUserUid: $remoteUserUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteUserJoinSuccess &&
            (identical(other.remoteUserUid, remoteUserUid) ||
                other.remoteUserUid == remoteUserUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteUserUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteUserJoinSuccessCopyWith<_$_RemoteUserJoinSuccess> get copyWith =>
      __$$_RemoteUserJoinSuccessCopyWithImpl<_$_RemoteUserJoinSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() joinChannelInProgress,
    required TResult Function() joinChannelSuccess,
    required TResult Function() joinChannelFailure,
    required TResult Function() remoteUserJoinInProgress,
    required TResult Function(String remoteUserUid) remoteUserJoinSuccess,
    required TResult Function(String errorMessage) remoteUserJoinFailure,
  }) {
    return remoteUserJoinSuccess(remoteUserUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? joinChannelInProgress,
    TResult? Function()? joinChannelSuccess,
    TResult? Function()? joinChannelFailure,
    TResult? Function()? remoteUserJoinInProgress,
    TResult? Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult? Function(String errorMessage)? remoteUserJoinFailure,
  }) {
    return remoteUserJoinSuccess?.call(remoteUserUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? joinChannelInProgress,
    TResult Function()? joinChannelSuccess,
    TResult Function()? joinChannelFailure,
    TResult Function()? remoteUserJoinInProgress,
    TResult Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult Function(String errorMessage)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinSuccess != null) {
      return remoteUserJoinSuccess(remoteUserUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_JoinChannelInProgress value)
        joinChannelInProgress,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinInProgress value)
        remoteUserJoinInProgress,
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
  }) {
    return remoteUserJoinSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinInProgress value)?
        remoteUserJoinInProgress,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
  }) {
    return remoteUserJoinSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinInProgress value)? remoteUserJoinInProgress,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinSuccess != null) {
      return remoteUserJoinSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoteUserJoinSuccess implements VideoCallState {
  const factory _RemoteUserJoinSuccess({required final String remoteUserUid}) =
      _$_RemoteUserJoinSuccess;

  String get remoteUserUid;
  @JsonKey(ignore: true)
  _$$_RemoteUserJoinSuccessCopyWith<_$_RemoteUserJoinSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoteUserJoinFailureCopyWith<$Res> {
  factory _$$_RemoteUserJoinFailureCopyWith(_$_RemoteUserJoinFailure value,
          $Res Function(_$_RemoteUserJoinFailure) then) =
      __$$_RemoteUserJoinFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_RemoteUserJoinFailureCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_RemoteUserJoinFailure>
    implements _$$_RemoteUserJoinFailureCopyWith<$Res> {
  __$$_RemoteUserJoinFailureCopyWithImpl(_$_RemoteUserJoinFailure _value,
      $Res Function(_$_RemoteUserJoinFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_RemoteUserJoinFailure(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoteUserJoinFailure implements _RemoteUserJoinFailure {
  const _$_RemoteUserJoinFailure({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'VideoCallState.remoteUserJoinFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteUserJoinFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteUserJoinFailureCopyWith<_$_RemoteUserJoinFailure> get copyWith =>
      __$$_RemoteUserJoinFailureCopyWithImpl<_$_RemoteUserJoinFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() joinChannelInProgress,
    required TResult Function() joinChannelSuccess,
    required TResult Function() joinChannelFailure,
    required TResult Function() remoteUserJoinInProgress,
    required TResult Function(String remoteUserUid) remoteUserJoinSuccess,
    required TResult Function(String errorMessage) remoteUserJoinFailure,
  }) {
    return remoteUserJoinFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? joinChannelInProgress,
    TResult? Function()? joinChannelSuccess,
    TResult? Function()? joinChannelFailure,
    TResult? Function()? remoteUserJoinInProgress,
    TResult? Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult? Function(String errorMessage)? remoteUserJoinFailure,
  }) {
    return remoteUserJoinFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? joinChannelInProgress,
    TResult Function()? joinChannelSuccess,
    TResult Function()? joinChannelFailure,
    TResult Function()? remoteUserJoinInProgress,
    TResult Function(String remoteUserUid)? remoteUserJoinSuccess,
    TResult Function(String errorMessage)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinFailure != null) {
      return remoteUserJoinFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_JoinChannelInProgress value)
        joinChannelInProgress,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinInProgress value)
        remoteUserJoinInProgress,
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
  }) {
    return remoteUserJoinFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinInProgress value)?
        remoteUserJoinInProgress,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
  }) {
    return remoteUserJoinFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinInProgress value)? remoteUserJoinInProgress,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinFailure != null) {
      return remoteUserJoinFailure(this);
    }
    return orElse();
  }
}

abstract class _RemoteUserJoinFailure implements VideoCallState {
  const factory _RemoteUserJoinFailure({required final String errorMessage}) =
      _$_RemoteUserJoinFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_RemoteUserJoinFailureCopyWith<_$_RemoteUserJoinFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
