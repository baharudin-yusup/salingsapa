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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoCallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() engineStarted,
    required TResult Function() joinRoomStarted,
    required TResult Function() joinRoomFailed,
    required TResult Function() leaveRoomStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function() disableTakePhotoSnapshotStarted,
    required TResult Function() enableTakePhotoSnapshotStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? engineStarted,
    TResult? Function()? joinRoomStarted,
    TResult? Function()? joinRoomFailed,
    TResult? Function()? leaveRoomStarted,
    TResult? Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult? Function()? disableTakePhotoSnapshotStarted,
    TResult? Function()? enableTakePhotoSnapshotStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? engineStarted,
    TResult Function()? joinRoomStarted,
    TResult Function()? joinRoomFailed,
    TResult Function()? leaveRoomStarted,
    TResult Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult Function()? disableTakePhotoSnapshotStarted,
    TResult Function()? enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngineStarted value) engineStarted,
    required TResult Function(_JoinRoomStarted value) joinRoomStarted,
    required TResult Function(_JoinRoomFailed value) joinRoomFailed,
    required TResult Function(_LeaveRoomStarted value) leaveRoomStarted,
    required TResult Function(_UpdateUserStatusStarted value)
        updateUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function(_DisableTakePhotoSnapshotStarted value)
        disableTakePhotoSnapshotStarted,
    required TResult Function(_EnableTakePhotoSnapshotStarted value)
        enableTakePhotoSnapshotStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EngineStarted value)? engineStarted,
    TResult? Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult? Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult? Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult? Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult? Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult? Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngineStarted value)? engineStarted,
    TResult Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
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
abstract class _$$EngineStartedImplCopyWith<$Res> {
  factory _$$EngineStartedImplCopyWith(
          _$EngineStartedImpl value, $Res Function(_$EngineStartedImpl) then) =
      __$$EngineStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EngineStartedImplCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$EngineStartedImpl>
    implements _$$EngineStartedImplCopyWith<$Res> {
  __$$EngineStartedImplCopyWithImpl(
      _$EngineStartedImpl _value, $Res Function(_$EngineStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EngineStartedImpl implements _EngineStarted {
  const _$EngineStartedImpl();

  @override
  String toString() {
    return 'VideoCallEvent.engineStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EngineStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() engineStarted,
    required TResult Function() joinRoomStarted,
    required TResult Function() joinRoomFailed,
    required TResult Function() leaveRoomStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function() disableTakePhotoSnapshotStarted,
    required TResult Function() enableTakePhotoSnapshotStarted,
  }) {
    return engineStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? engineStarted,
    TResult? Function()? joinRoomStarted,
    TResult? Function()? joinRoomFailed,
    TResult? Function()? leaveRoomStarted,
    TResult? Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult? Function()? disableTakePhotoSnapshotStarted,
    TResult? Function()? enableTakePhotoSnapshotStarted,
  }) {
    return engineStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? engineStarted,
    TResult Function()? joinRoomStarted,
    TResult Function()? joinRoomFailed,
    TResult Function()? leaveRoomStarted,
    TResult Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult Function()? disableTakePhotoSnapshotStarted,
    TResult Function()? enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (engineStarted != null) {
      return engineStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngineStarted value) engineStarted,
    required TResult Function(_JoinRoomStarted value) joinRoomStarted,
    required TResult Function(_JoinRoomFailed value) joinRoomFailed,
    required TResult Function(_LeaveRoomStarted value) leaveRoomStarted,
    required TResult Function(_UpdateUserStatusStarted value)
        updateUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function(_DisableTakePhotoSnapshotStarted value)
        disableTakePhotoSnapshotStarted,
    required TResult Function(_EnableTakePhotoSnapshotStarted value)
        enableTakePhotoSnapshotStarted,
  }) {
    return engineStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EngineStarted value)? engineStarted,
    TResult? Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult? Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult? Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult? Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult? Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult? Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
  }) {
    return engineStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngineStarted value)? engineStarted,
    TResult Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (engineStarted != null) {
      return engineStarted(this);
    }
    return orElse();
  }
}

abstract class _EngineStarted implements VideoCallEvent {
  const factory _EngineStarted() = _$EngineStartedImpl;
}

/// @nodoc
abstract class _$$JoinRoomStartedImplCopyWith<$Res> {
  factory _$$JoinRoomStartedImplCopyWith(_$JoinRoomStartedImpl value,
          $Res Function(_$JoinRoomStartedImpl) then) =
      __$$JoinRoomStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JoinRoomStartedImplCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$JoinRoomStartedImpl>
    implements _$$JoinRoomStartedImplCopyWith<$Res> {
  __$$JoinRoomStartedImplCopyWithImpl(
      _$JoinRoomStartedImpl _value, $Res Function(_$JoinRoomStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JoinRoomStartedImpl implements _JoinRoomStarted {
  const _$JoinRoomStartedImpl();

  @override
  String toString() {
    return 'VideoCallEvent.joinRoomStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JoinRoomStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() engineStarted,
    required TResult Function() joinRoomStarted,
    required TResult Function() joinRoomFailed,
    required TResult Function() leaveRoomStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function() disableTakePhotoSnapshotStarted,
    required TResult Function() enableTakePhotoSnapshotStarted,
  }) {
    return joinRoomStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? engineStarted,
    TResult? Function()? joinRoomStarted,
    TResult? Function()? joinRoomFailed,
    TResult? Function()? leaveRoomStarted,
    TResult? Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult? Function()? disableTakePhotoSnapshotStarted,
    TResult? Function()? enableTakePhotoSnapshotStarted,
  }) {
    return joinRoomStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? engineStarted,
    TResult Function()? joinRoomStarted,
    TResult Function()? joinRoomFailed,
    TResult Function()? leaveRoomStarted,
    TResult Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult Function()? disableTakePhotoSnapshotStarted,
    TResult Function()? enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (joinRoomStarted != null) {
      return joinRoomStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngineStarted value) engineStarted,
    required TResult Function(_JoinRoomStarted value) joinRoomStarted,
    required TResult Function(_JoinRoomFailed value) joinRoomFailed,
    required TResult Function(_LeaveRoomStarted value) leaveRoomStarted,
    required TResult Function(_UpdateUserStatusStarted value)
        updateUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function(_DisableTakePhotoSnapshotStarted value)
        disableTakePhotoSnapshotStarted,
    required TResult Function(_EnableTakePhotoSnapshotStarted value)
        enableTakePhotoSnapshotStarted,
  }) {
    return joinRoomStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EngineStarted value)? engineStarted,
    TResult? Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult? Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult? Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult? Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult? Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult? Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
  }) {
    return joinRoomStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngineStarted value)? engineStarted,
    TResult Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (joinRoomStarted != null) {
      return joinRoomStarted(this);
    }
    return orElse();
  }
}

abstract class _JoinRoomStarted implements VideoCallEvent {
  const factory _JoinRoomStarted() = _$JoinRoomStartedImpl;
}

/// @nodoc
abstract class _$$JoinRoomFailedImplCopyWith<$Res> {
  factory _$$JoinRoomFailedImplCopyWith(_$JoinRoomFailedImpl value,
          $Res Function(_$JoinRoomFailedImpl) then) =
      __$$JoinRoomFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JoinRoomFailedImplCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$JoinRoomFailedImpl>
    implements _$$JoinRoomFailedImplCopyWith<$Res> {
  __$$JoinRoomFailedImplCopyWithImpl(
      _$JoinRoomFailedImpl _value, $Res Function(_$JoinRoomFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JoinRoomFailedImpl implements _JoinRoomFailed {
  const _$JoinRoomFailedImpl();

  @override
  String toString() {
    return 'VideoCallEvent.joinRoomFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JoinRoomFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() engineStarted,
    required TResult Function() joinRoomStarted,
    required TResult Function() joinRoomFailed,
    required TResult Function() leaveRoomStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function() disableTakePhotoSnapshotStarted,
    required TResult Function() enableTakePhotoSnapshotStarted,
  }) {
    return joinRoomFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? engineStarted,
    TResult? Function()? joinRoomStarted,
    TResult? Function()? joinRoomFailed,
    TResult? Function()? leaveRoomStarted,
    TResult? Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult? Function()? disableTakePhotoSnapshotStarted,
    TResult? Function()? enableTakePhotoSnapshotStarted,
  }) {
    return joinRoomFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? engineStarted,
    TResult Function()? joinRoomStarted,
    TResult Function()? joinRoomFailed,
    TResult Function()? leaveRoomStarted,
    TResult Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult Function()? disableTakePhotoSnapshotStarted,
    TResult Function()? enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (joinRoomFailed != null) {
      return joinRoomFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngineStarted value) engineStarted,
    required TResult Function(_JoinRoomStarted value) joinRoomStarted,
    required TResult Function(_JoinRoomFailed value) joinRoomFailed,
    required TResult Function(_LeaveRoomStarted value) leaveRoomStarted,
    required TResult Function(_UpdateUserStatusStarted value)
        updateUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function(_DisableTakePhotoSnapshotStarted value)
        disableTakePhotoSnapshotStarted,
    required TResult Function(_EnableTakePhotoSnapshotStarted value)
        enableTakePhotoSnapshotStarted,
  }) {
    return joinRoomFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EngineStarted value)? engineStarted,
    TResult? Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult? Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult? Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult? Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult? Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult? Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
  }) {
    return joinRoomFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngineStarted value)? engineStarted,
    TResult Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (joinRoomFailed != null) {
      return joinRoomFailed(this);
    }
    return orElse();
  }
}

abstract class _JoinRoomFailed implements VideoCallEvent {
  const factory _JoinRoomFailed() = _$JoinRoomFailedImpl;
}

/// @nodoc
abstract class _$$LeaveRoomStartedImplCopyWith<$Res> {
  factory _$$LeaveRoomStartedImplCopyWith(_$LeaveRoomStartedImpl value,
          $Res Function(_$LeaveRoomStartedImpl) then) =
      __$$LeaveRoomStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeaveRoomStartedImplCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$LeaveRoomStartedImpl>
    implements _$$LeaveRoomStartedImplCopyWith<$Res> {
  __$$LeaveRoomStartedImplCopyWithImpl(_$LeaveRoomStartedImpl _value,
      $Res Function(_$LeaveRoomStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LeaveRoomStartedImpl implements _LeaveRoomStarted {
  const _$LeaveRoomStartedImpl();

  @override
  String toString() {
    return 'VideoCallEvent.leaveRoomStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeaveRoomStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() engineStarted,
    required TResult Function() joinRoomStarted,
    required TResult Function() joinRoomFailed,
    required TResult Function() leaveRoomStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function() disableTakePhotoSnapshotStarted,
    required TResult Function() enableTakePhotoSnapshotStarted,
  }) {
    return leaveRoomStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? engineStarted,
    TResult? Function()? joinRoomStarted,
    TResult? Function()? joinRoomFailed,
    TResult? Function()? leaveRoomStarted,
    TResult? Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult? Function()? disableTakePhotoSnapshotStarted,
    TResult? Function()? enableTakePhotoSnapshotStarted,
  }) {
    return leaveRoomStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? engineStarted,
    TResult Function()? joinRoomStarted,
    TResult Function()? joinRoomFailed,
    TResult Function()? leaveRoomStarted,
    TResult Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult Function()? disableTakePhotoSnapshotStarted,
    TResult Function()? enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (leaveRoomStarted != null) {
      return leaveRoomStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngineStarted value) engineStarted,
    required TResult Function(_JoinRoomStarted value) joinRoomStarted,
    required TResult Function(_JoinRoomFailed value) joinRoomFailed,
    required TResult Function(_LeaveRoomStarted value) leaveRoomStarted,
    required TResult Function(_UpdateUserStatusStarted value)
        updateUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function(_DisableTakePhotoSnapshotStarted value)
        disableTakePhotoSnapshotStarted,
    required TResult Function(_EnableTakePhotoSnapshotStarted value)
        enableTakePhotoSnapshotStarted,
  }) {
    return leaveRoomStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EngineStarted value)? engineStarted,
    TResult? Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult? Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult? Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult? Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult? Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult? Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
  }) {
    return leaveRoomStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngineStarted value)? engineStarted,
    TResult Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (leaveRoomStarted != null) {
      return leaveRoomStarted(this);
    }
    return orElse();
  }
}

abstract class _LeaveRoomStarted implements VideoCallEvent {
  const factory _LeaveRoomStarted() = _$LeaveRoomStartedImpl;
}

/// @nodoc
abstract class _$$UpdateUserStatusStartedImplCopyWith<$Res> {
  factory _$$UpdateUserStatusStartedImplCopyWith(
          _$UpdateUserStatusStartedImpl value,
          $Res Function(_$UpdateUserStatusStartedImpl) then) =
      __$$UpdateUserStatusStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoCallUserUpdateInfo info});
}

/// @nodoc
class __$$UpdateUserStatusStartedImplCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$UpdateUserStatusStartedImpl>
    implements _$$UpdateUserStatusStartedImplCopyWith<$Res> {
  __$$UpdateUserStatusStartedImplCopyWithImpl(
      _$UpdateUserStatusStartedImpl _value,
      $Res Function(_$UpdateUserStatusStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$UpdateUserStatusStartedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as VideoCallUserUpdateInfo,
    ));
  }
}

/// @nodoc

class _$UpdateUserStatusStartedImpl implements _UpdateUserStatusStarted {
  const _$UpdateUserStatusStartedImpl(this.info);

  @override
  final VideoCallUserUpdateInfo info;

  @override
  String toString() {
    return 'VideoCallEvent.updateUserStatusStarted(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserStatusStartedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserStatusStartedImplCopyWith<_$UpdateUserStatusStartedImpl>
      get copyWith => __$$UpdateUserStatusStartedImplCopyWithImpl<
          _$UpdateUserStatusStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() engineStarted,
    required TResult Function() joinRoomStarted,
    required TResult Function() joinRoomFailed,
    required TResult Function() leaveRoomStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function() disableTakePhotoSnapshotStarted,
    required TResult Function() enableTakePhotoSnapshotStarted,
  }) {
    return updateUserStatusStarted(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? engineStarted,
    TResult? Function()? joinRoomStarted,
    TResult? Function()? joinRoomFailed,
    TResult? Function()? leaveRoomStarted,
    TResult? Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult? Function()? disableTakePhotoSnapshotStarted,
    TResult? Function()? enableTakePhotoSnapshotStarted,
  }) {
    return updateUserStatusStarted?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? engineStarted,
    TResult Function()? joinRoomStarted,
    TResult Function()? joinRoomFailed,
    TResult Function()? leaveRoomStarted,
    TResult Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult Function()? disableTakePhotoSnapshotStarted,
    TResult Function()? enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (updateUserStatusStarted != null) {
      return updateUserStatusStarted(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngineStarted value) engineStarted,
    required TResult Function(_JoinRoomStarted value) joinRoomStarted,
    required TResult Function(_JoinRoomFailed value) joinRoomFailed,
    required TResult Function(_LeaveRoomStarted value) leaveRoomStarted,
    required TResult Function(_UpdateUserStatusStarted value)
        updateUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function(_DisableTakePhotoSnapshotStarted value)
        disableTakePhotoSnapshotStarted,
    required TResult Function(_EnableTakePhotoSnapshotStarted value)
        enableTakePhotoSnapshotStarted,
  }) {
    return updateUserStatusStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EngineStarted value)? engineStarted,
    TResult? Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult? Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult? Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult? Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult? Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult? Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
  }) {
    return updateUserStatusStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngineStarted value)? engineStarted,
    TResult Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (updateUserStatusStarted != null) {
      return updateUserStatusStarted(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserStatusStarted implements VideoCallEvent {
  const factory _UpdateUserStatusStarted(final VideoCallUserUpdateInfo info) =
      _$UpdateUserStatusStartedImpl;

  VideoCallUserUpdateInfo get info;
  @JsonKey(ignore: true)
  _$$UpdateUserStatusStartedImplCopyWith<_$UpdateUserStatusStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TakePhotoSnapshotFeatureStatusChangedImplCopyWith<$Res> {
  factory _$$TakePhotoSnapshotFeatureStatusChangedImplCopyWith(
          _$TakePhotoSnapshotFeatureStatusChangedImpl value,
          $Res Function(_$TakePhotoSnapshotFeatureStatusChangedImpl) then) =
      __$$TakePhotoSnapshotFeatureStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class __$$TakePhotoSnapshotFeatureStatusChangedImplCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res,
        _$TakePhotoSnapshotFeatureStatusChangedImpl>
    implements _$$TakePhotoSnapshotFeatureStatusChangedImplCopyWith<$Res> {
  __$$TakePhotoSnapshotFeatureStatusChangedImplCopyWithImpl(
      _$TakePhotoSnapshotFeatureStatusChangedImpl _value,
      $Res Function(_$TakePhotoSnapshotFeatureStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
  }) {
    return _then(_$TakePhotoSnapshotFeatureStatusChangedImpl(
      null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TakePhotoSnapshotFeatureStatusChangedImpl
    implements _TakePhotoSnapshotFeatureStatusChanged {
  const _$TakePhotoSnapshotFeatureStatusChangedImpl(this.isEnabled);

  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'VideoCallEvent.takePhotoSnapshotFeatureStatusChanged(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakePhotoSnapshotFeatureStatusChangedImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakePhotoSnapshotFeatureStatusChangedImplCopyWith<
          _$TakePhotoSnapshotFeatureStatusChangedImpl>
      get copyWith => __$$TakePhotoSnapshotFeatureStatusChangedImplCopyWithImpl<
          _$TakePhotoSnapshotFeatureStatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() engineStarted,
    required TResult Function() joinRoomStarted,
    required TResult Function() joinRoomFailed,
    required TResult Function() leaveRoomStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function() disableTakePhotoSnapshotStarted,
    required TResult Function() enableTakePhotoSnapshotStarted,
  }) {
    return takePhotoSnapshotFeatureStatusChanged(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? engineStarted,
    TResult? Function()? joinRoomStarted,
    TResult? Function()? joinRoomFailed,
    TResult? Function()? leaveRoomStarted,
    TResult? Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult? Function()? disableTakePhotoSnapshotStarted,
    TResult? Function()? enableTakePhotoSnapshotStarted,
  }) {
    return takePhotoSnapshotFeatureStatusChanged?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? engineStarted,
    TResult Function()? joinRoomStarted,
    TResult Function()? joinRoomFailed,
    TResult Function()? leaveRoomStarted,
    TResult Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult Function()? disableTakePhotoSnapshotStarted,
    TResult Function()? enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (takePhotoSnapshotFeatureStatusChanged != null) {
      return takePhotoSnapshotFeatureStatusChanged(isEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngineStarted value) engineStarted,
    required TResult Function(_JoinRoomStarted value) joinRoomStarted,
    required TResult Function(_JoinRoomFailed value) joinRoomFailed,
    required TResult Function(_LeaveRoomStarted value) leaveRoomStarted,
    required TResult Function(_UpdateUserStatusStarted value)
        updateUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function(_DisableTakePhotoSnapshotStarted value)
        disableTakePhotoSnapshotStarted,
    required TResult Function(_EnableTakePhotoSnapshotStarted value)
        enableTakePhotoSnapshotStarted,
  }) {
    return takePhotoSnapshotFeatureStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EngineStarted value)? engineStarted,
    TResult? Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult? Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult? Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult? Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult? Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult? Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
  }) {
    return takePhotoSnapshotFeatureStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngineStarted value)? engineStarted,
    TResult Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (takePhotoSnapshotFeatureStatusChanged != null) {
      return takePhotoSnapshotFeatureStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _TakePhotoSnapshotFeatureStatusChanged
    implements VideoCallEvent {
  const factory _TakePhotoSnapshotFeatureStatusChanged(final bool isEnabled) =
      _$TakePhotoSnapshotFeatureStatusChangedImpl;

  bool get isEnabled;
  @JsonKey(ignore: true)
  _$$TakePhotoSnapshotFeatureStatusChangedImplCopyWith<
          _$TakePhotoSnapshotFeatureStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisableTakePhotoSnapshotStartedImplCopyWith<$Res> {
  factory _$$DisableTakePhotoSnapshotStartedImplCopyWith(
          _$DisableTakePhotoSnapshotStartedImpl value,
          $Res Function(_$DisableTakePhotoSnapshotStartedImpl) then) =
      __$$DisableTakePhotoSnapshotStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisableTakePhotoSnapshotStartedImplCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res,
        _$DisableTakePhotoSnapshotStartedImpl>
    implements _$$DisableTakePhotoSnapshotStartedImplCopyWith<$Res> {
  __$$DisableTakePhotoSnapshotStartedImplCopyWithImpl(
      _$DisableTakePhotoSnapshotStartedImpl _value,
      $Res Function(_$DisableTakePhotoSnapshotStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisableTakePhotoSnapshotStartedImpl
    implements _DisableTakePhotoSnapshotStarted {
  const _$DisableTakePhotoSnapshotStartedImpl();

  @override
  String toString() {
    return 'VideoCallEvent.disableTakePhotoSnapshotStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisableTakePhotoSnapshotStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() engineStarted,
    required TResult Function() joinRoomStarted,
    required TResult Function() joinRoomFailed,
    required TResult Function() leaveRoomStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function() disableTakePhotoSnapshotStarted,
    required TResult Function() enableTakePhotoSnapshotStarted,
  }) {
    return disableTakePhotoSnapshotStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? engineStarted,
    TResult? Function()? joinRoomStarted,
    TResult? Function()? joinRoomFailed,
    TResult? Function()? leaveRoomStarted,
    TResult? Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult? Function()? disableTakePhotoSnapshotStarted,
    TResult? Function()? enableTakePhotoSnapshotStarted,
  }) {
    return disableTakePhotoSnapshotStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? engineStarted,
    TResult Function()? joinRoomStarted,
    TResult Function()? joinRoomFailed,
    TResult Function()? leaveRoomStarted,
    TResult Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult Function()? disableTakePhotoSnapshotStarted,
    TResult Function()? enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (disableTakePhotoSnapshotStarted != null) {
      return disableTakePhotoSnapshotStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngineStarted value) engineStarted,
    required TResult Function(_JoinRoomStarted value) joinRoomStarted,
    required TResult Function(_JoinRoomFailed value) joinRoomFailed,
    required TResult Function(_LeaveRoomStarted value) leaveRoomStarted,
    required TResult Function(_UpdateUserStatusStarted value)
        updateUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function(_DisableTakePhotoSnapshotStarted value)
        disableTakePhotoSnapshotStarted,
    required TResult Function(_EnableTakePhotoSnapshotStarted value)
        enableTakePhotoSnapshotStarted,
  }) {
    return disableTakePhotoSnapshotStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EngineStarted value)? engineStarted,
    TResult? Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult? Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult? Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult? Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult? Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult? Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
  }) {
    return disableTakePhotoSnapshotStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngineStarted value)? engineStarted,
    TResult Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (disableTakePhotoSnapshotStarted != null) {
      return disableTakePhotoSnapshotStarted(this);
    }
    return orElse();
  }
}

abstract class _DisableTakePhotoSnapshotStarted implements VideoCallEvent {
  const factory _DisableTakePhotoSnapshotStarted() =
      _$DisableTakePhotoSnapshotStartedImpl;
}

/// @nodoc
abstract class _$$EnableTakePhotoSnapshotStartedImplCopyWith<$Res> {
  factory _$$EnableTakePhotoSnapshotStartedImplCopyWith(
          _$EnableTakePhotoSnapshotStartedImpl value,
          $Res Function(_$EnableTakePhotoSnapshotStartedImpl) then) =
      __$$EnableTakePhotoSnapshotStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnableTakePhotoSnapshotStartedImplCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res,
        _$EnableTakePhotoSnapshotStartedImpl>
    implements _$$EnableTakePhotoSnapshotStartedImplCopyWith<$Res> {
  __$$EnableTakePhotoSnapshotStartedImplCopyWithImpl(
      _$EnableTakePhotoSnapshotStartedImpl _value,
      $Res Function(_$EnableTakePhotoSnapshotStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnableTakePhotoSnapshotStartedImpl
    implements _EnableTakePhotoSnapshotStarted {
  const _$EnableTakePhotoSnapshotStartedImpl();

  @override
  String toString() {
    return 'VideoCallEvent.enableTakePhotoSnapshotStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnableTakePhotoSnapshotStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() engineStarted,
    required TResult Function() joinRoomStarted,
    required TResult Function() joinRoomFailed,
    required TResult Function() leaveRoomStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function() disableTakePhotoSnapshotStarted,
    required TResult Function() enableTakePhotoSnapshotStarted,
  }) {
    return enableTakePhotoSnapshotStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? engineStarted,
    TResult? Function()? joinRoomStarted,
    TResult? Function()? joinRoomFailed,
    TResult? Function()? leaveRoomStarted,
    TResult? Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult? Function()? disableTakePhotoSnapshotStarted,
    TResult? Function()? enableTakePhotoSnapshotStarted,
  }) {
    return enableTakePhotoSnapshotStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? engineStarted,
    TResult Function()? joinRoomStarted,
    TResult Function()? joinRoomFailed,
    TResult Function()? leaveRoomStarted,
    TResult Function(VideoCallUserUpdateInfo info)? updateUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    TResult Function()? disableTakePhotoSnapshotStarted,
    TResult Function()? enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (enableTakePhotoSnapshotStarted != null) {
      return enableTakePhotoSnapshotStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngineStarted value) engineStarted,
    required TResult Function(_JoinRoomStarted value) joinRoomStarted,
    required TResult Function(_JoinRoomFailed value) joinRoomFailed,
    required TResult Function(_LeaveRoomStarted value) leaveRoomStarted,
    required TResult Function(_UpdateUserStatusStarted value)
        updateUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
    required TResult Function(_DisableTakePhotoSnapshotStarted value)
        disableTakePhotoSnapshotStarted,
    required TResult Function(_EnableTakePhotoSnapshotStarted value)
        enableTakePhotoSnapshotStarted,
  }) {
    return enableTakePhotoSnapshotStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EngineStarted value)? engineStarted,
    TResult? Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult? Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult? Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult? Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult? Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult? Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
  }) {
    return enableTakePhotoSnapshotStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngineStarted value)? engineStarted,
    TResult Function(_JoinRoomStarted value)? joinRoomStarted,
    TResult Function(_JoinRoomFailed value)? joinRoomFailed,
    TResult Function(_LeaveRoomStarted value)? leaveRoomStarted,
    TResult Function(_UpdateUserStatusStarted value)? updateUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    TResult Function(_DisableTakePhotoSnapshotStarted value)?
        disableTakePhotoSnapshotStarted,
    TResult Function(_EnableTakePhotoSnapshotStarted value)?
        enableTakePhotoSnapshotStarted,
    required TResult orElse(),
  }) {
    if (enableTakePhotoSnapshotStarted != null) {
      return enableTakePhotoSnapshotStarted(this);
    }
    return orElse();
  }
}

abstract class _EnableTakePhotoSnapshotStarted implements VideoCallEvent {
  const factory _EnableTakePhotoSnapshotStarted() =
      _$EnableTakePhotoSnapshotStartedImpl;
}

/// @nodoc
mixin _$VideoCallState {
  Room get room => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoCallStateCopyWith<VideoCallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallStateCopyWith<$Res> {
  factory $VideoCallStateCopyWith(
          VideoCallState value, $Res Function(VideoCallState) then) =
      _$VideoCallStateCopyWithImpl<$Res, VideoCallState>;
  @useResult
  $Res call({Room room});
}

/// @nodoc
class _$VideoCallStateCopyWithImpl<$Res, $Val extends VideoCallState>
    implements $VideoCallStateCopyWith<$Res> {
  _$VideoCallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_value.copyWith(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$InitialImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'VideoCallState.initial(room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return initial(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return initial?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoCallState {
  const factory _Initial(final Room room) = _$InitialImpl;

  @override
  Room get room;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitEngineInProgressImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$InitEngineInProgressImplCopyWith(_$InitEngineInProgressImpl value,
          $Res Function(_$InitEngineInProgressImpl) then) =
      __$$InitEngineInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room});
}

/// @nodoc
class __$$InitEngineInProgressImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$InitEngineInProgressImpl>
    implements _$$InitEngineInProgressImplCopyWith<$Res> {
  __$$InitEngineInProgressImplCopyWithImpl(_$InitEngineInProgressImpl _value,
      $Res Function(_$InitEngineInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$InitEngineInProgressImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$InitEngineInProgressImpl implements _InitEngineInProgress {
  const _$InitEngineInProgressImpl(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'VideoCallState.initEngineInProgress(room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitEngineInProgressImpl &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitEngineInProgressImplCopyWith<_$InitEngineInProgressImpl>
      get copyWith =>
          __$$InitEngineInProgressImplCopyWithImpl<_$InitEngineInProgressImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return initEngineInProgress(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return initEngineInProgress?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (initEngineInProgress != null) {
      return initEngineInProgress(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return initEngineInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return initEngineInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (initEngineInProgress != null) {
      return initEngineInProgress(this);
    }
    return orElse();
  }
}

abstract class _InitEngineInProgress implements VideoCallState {
  const factory _InitEngineInProgress(final Room room) =
      _$InitEngineInProgressImpl;

  @override
  Room get room;
  @override
  @JsonKey(ignore: true)
  _$$InitEngineInProgressImplCopyWith<_$InitEngineInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitEngineSuccessImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$InitEngineSuccessImplCopyWith(_$InitEngineSuccessImpl value,
          $Res Function(_$InitEngineSuccessImpl) then) =
      __$$InitEngineSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room, RtcEngine engine});
}

/// @nodoc
class __$$InitEngineSuccessImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$InitEngineSuccessImpl>
    implements _$$InitEngineSuccessImplCopyWith<$Res> {
  __$$InitEngineSuccessImplCopyWithImpl(_$InitEngineSuccessImpl _value,
      $Res Function(_$InitEngineSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? engine = null,
  }) {
    return _then(_$InitEngineSuccessImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
    ));
  }
}

/// @nodoc

class _$InitEngineSuccessImpl implements _InitEngineSuccess {
  const _$InitEngineSuccessImpl(this.room, this.engine);

  @override
  final Room room;
  @override
  final RtcEngine engine;

  @override
  String toString() {
    return 'VideoCallState.initEngineSuccess(room: $room, engine: $engine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitEngineSuccessImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, engine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitEngineSuccessImplCopyWith<_$InitEngineSuccessImpl> get copyWith =>
      __$$InitEngineSuccessImplCopyWithImpl<_$InitEngineSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return initEngineSuccess(room, engine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return initEngineSuccess?.call(room, engine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (initEngineSuccess != null) {
      return initEngineSuccess(room, engine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return initEngineSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return initEngineSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (initEngineSuccess != null) {
      return initEngineSuccess(this);
    }
    return orElse();
  }
}

abstract class _InitEngineSuccess implements VideoCallState {
  const factory _InitEngineSuccess(final Room room, final RtcEngine engine) =
      _$InitEngineSuccessImpl;

  @override
  Room get room;
  RtcEngine get engine;
  @override
  @JsonKey(ignore: true)
  _$$InitEngineSuccessImplCopyWith<_$InitEngineSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitEngineFailureImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$InitEngineFailureImplCopyWith(_$InitEngineFailureImpl value,
          $Res Function(_$InitEngineFailureImpl) then) =
      __$$InitEngineFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room, Failure failure});
}

/// @nodoc
class __$$InitEngineFailureImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$InitEngineFailureImpl>
    implements _$$InitEngineFailureImplCopyWith<$Res> {
  __$$InitEngineFailureImplCopyWithImpl(_$InitEngineFailureImpl _value,
      $Res Function(_$InitEngineFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? failure = null,
  }) {
    return _then(_$InitEngineFailureImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$InitEngineFailureImpl implements _InitEngineFailure {
  const _$InitEngineFailureImpl(this.room, this.failure);

  @override
  final Room room;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'VideoCallState.initEngineFailure(room: $room, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitEngineFailureImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitEngineFailureImplCopyWith<_$InitEngineFailureImpl> get copyWith =>
      __$$InitEngineFailureImplCopyWithImpl<_$InitEngineFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return initEngineFailure(room, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return initEngineFailure?.call(room, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (initEngineFailure != null) {
      return initEngineFailure(room, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return initEngineFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return initEngineFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (initEngineFailure != null) {
      return initEngineFailure(this);
    }
    return orElse();
  }
}

abstract class _InitEngineFailure implements VideoCallState {
  const factory _InitEngineFailure(final Room room, final Failure failure) =
      _$InitEngineFailureImpl;

  @override
  Room get room;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$InitEngineFailureImplCopyWith<_$InitEngineFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinRoomInProgressImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$JoinRoomInProgressImplCopyWith(_$JoinRoomInProgressImpl value,
          $Res Function(_$JoinRoomInProgressImpl) then) =
      __$$JoinRoomInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room, RtcEngine engine});
}

/// @nodoc
class __$$JoinRoomInProgressImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$JoinRoomInProgressImpl>
    implements _$$JoinRoomInProgressImplCopyWith<$Res> {
  __$$JoinRoomInProgressImplCopyWithImpl(_$JoinRoomInProgressImpl _value,
      $Res Function(_$JoinRoomInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? engine = null,
  }) {
    return _then(_$JoinRoomInProgressImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
    ));
  }
}

/// @nodoc

class _$JoinRoomInProgressImpl implements _JoinRoomInProgress {
  const _$JoinRoomInProgressImpl(this.room, this.engine);

  @override
  final Room room;
  @override
  final RtcEngine engine;

  @override
  String toString() {
    return 'VideoCallState.joinRoomInProgress(room: $room, engine: $engine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomInProgressImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, engine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomInProgressImplCopyWith<_$JoinRoomInProgressImpl> get copyWith =>
      __$$JoinRoomInProgressImplCopyWithImpl<_$JoinRoomInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return joinRoomInProgress(room, engine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return joinRoomInProgress?.call(room, engine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (joinRoomInProgress != null) {
      return joinRoomInProgress(room, engine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return joinRoomInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return joinRoomInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (joinRoomInProgress != null) {
      return joinRoomInProgress(this);
    }
    return orElse();
  }
}

abstract class _JoinRoomInProgress implements VideoCallState {
  const factory _JoinRoomInProgress(final Room room, final RtcEngine engine) =
      _$JoinRoomInProgressImpl;

  @override
  Room get room;
  RtcEngine get engine;
  @override
  @JsonKey(ignore: true)
  _$$JoinRoomInProgressImplCopyWith<_$JoinRoomInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinRoomFailureImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$JoinRoomFailureImplCopyWith(_$JoinRoomFailureImpl value,
          $Res Function(_$JoinRoomFailureImpl) then) =
      __$$JoinRoomFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room, RtcEngine engine, Failure failure});
}

/// @nodoc
class __$$JoinRoomFailureImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$JoinRoomFailureImpl>
    implements _$$JoinRoomFailureImplCopyWith<$Res> {
  __$$JoinRoomFailureImplCopyWithImpl(
      _$JoinRoomFailureImpl _value, $Res Function(_$JoinRoomFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? engine = null,
    Object? failure = null,
  }) {
    return _then(_$JoinRoomFailureImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$JoinRoomFailureImpl implements _JoinRoomFailure {
  const _$JoinRoomFailureImpl(this.room, this.engine, this.failure);

  @override
  final Room room;
  @override
  final RtcEngine engine;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'VideoCallState.joinRoomFailure(room: $room, engine: $engine, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomFailureImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, engine, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomFailureImplCopyWith<_$JoinRoomFailureImpl> get copyWith =>
      __$$JoinRoomFailureImplCopyWithImpl<_$JoinRoomFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return joinRoomFailure(room, engine, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return joinRoomFailure?.call(room, engine, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (joinRoomFailure != null) {
      return joinRoomFailure(room, engine, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return joinRoomFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return joinRoomFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (joinRoomFailure != null) {
      return joinRoomFailure(this);
    }
    return orElse();
  }
}

abstract class _JoinRoomFailure implements VideoCallState {
  const factory _JoinRoomFailure(
          final Room room, final RtcEngine engine, final Failure failure) =
      _$JoinRoomFailureImpl;

  @override
  Room get room;
  RtcEngine get engine;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$JoinRoomFailureImplCopyWith<_$JoinRoomFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinRoomSuccessImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$JoinRoomSuccessImplCopyWith(_$JoinRoomSuccessImpl value,
          $Res Function(_$JoinRoomSuccessImpl) then) =
      __$$JoinRoomSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Room room,
      RtcEngine engine,
      int? localVideoUid,
      int? remoteVideoUid,
      bool isTakePhotoEnabled,
      Failure? failure});
}

/// @nodoc
class __$$JoinRoomSuccessImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$JoinRoomSuccessImpl>
    implements _$$JoinRoomSuccessImplCopyWith<$Res> {
  __$$JoinRoomSuccessImplCopyWithImpl(
      _$JoinRoomSuccessImpl _value, $Res Function(_$JoinRoomSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? engine = null,
    Object? localVideoUid = freezed,
    Object? remoteVideoUid = freezed,
    Object? isTakePhotoEnabled = null,
    Object? failure = freezed,
  }) {
    return _then(_$JoinRoomSuccessImpl(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
      localVideoUid: freezed == localVideoUid
          ? _value.localVideoUid
          : localVideoUid // ignore: cast_nullable_to_non_nullable
              as int?,
      remoteVideoUid: freezed == remoteVideoUid
          ? _value.remoteVideoUid
          : remoteVideoUid // ignore: cast_nullable_to_non_nullable
              as int?,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$JoinRoomSuccessImpl implements _JoinRoomSuccess {
  const _$JoinRoomSuccessImpl(
      {required this.room,
      required this.engine,
      this.localVideoUid,
      this.remoteVideoUid,
      this.isTakePhotoEnabled = false,
      this.failure});

  @override
  final Room room;
  @override
  final RtcEngine engine;
  @override
  final int? localVideoUid;
  @override
  final int? remoteVideoUid;
  @override
  @JsonKey()
  final bool isTakePhotoEnabled;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'VideoCallState.joinRoomSuccess(room: $room, engine: $engine, localVideoUid: $localVideoUid, remoteVideoUid: $remoteVideoUid, isTakePhotoEnabled: $isTakePhotoEnabled, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomSuccessImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.localVideoUid, localVideoUid) ||
                other.localVideoUid == localVideoUid) &&
            (identical(other.remoteVideoUid, remoteVideoUid) ||
                other.remoteVideoUid == remoteVideoUid) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, engine, localVideoUid,
      remoteVideoUid, isTakePhotoEnabled, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomSuccessImplCopyWith<_$JoinRoomSuccessImpl> get copyWith =>
      __$$JoinRoomSuccessImplCopyWithImpl<_$JoinRoomSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return joinRoomSuccess(room, engine, localVideoUid, remoteVideoUid,
        isTakePhotoEnabled, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return joinRoomSuccess?.call(room, engine, localVideoUid, remoteVideoUid,
        isTakePhotoEnabled, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (joinRoomSuccess != null) {
      return joinRoomSuccess(room, engine, localVideoUid, remoteVideoUid,
          isTakePhotoEnabled, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return joinRoomSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return joinRoomSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (joinRoomSuccess != null) {
      return joinRoomSuccess(this);
    }
    return orElse();
  }
}

abstract class _JoinRoomSuccess implements VideoCallState {
  const factory _JoinRoomSuccess(
      {required final Room room,
      required final RtcEngine engine,
      final int? localVideoUid,
      final int? remoteVideoUid,
      final bool isTakePhotoEnabled,
      final Failure? failure}) = _$JoinRoomSuccessImpl;

  @override
  Room get room;
  RtcEngine get engine;
  int? get localVideoUid;
  int? get remoteVideoUid;
  bool get isTakePhotoEnabled;
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$JoinRoomSuccessImplCopyWith<_$JoinRoomSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveRoomInProgressImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$LeaveRoomInProgressImplCopyWith(_$LeaveRoomInProgressImpl value,
          $Res Function(_$LeaveRoomInProgressImpl) then) =
      __$$LeaveRoomInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room, RtcEngine? engine});
}

/// @nodoc
class __$$LeaveRoomInProgressImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$LeaveRoomInProgressImpl>
    implements _$$LeaveRoomInProgressImplCopyWith<$Res> {
  __$$LeaveRoomInProgressImplCopyWithImpl(_$LeaveRoomInProgressImpl _value,
      $Res Function(_$LeaveRoomInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? engine = freezed,
  }) {
    return _then(_$LeaveRoomInProgressImpl(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine?,
    ));
  }
}

/// @nodoc

class _$LeaveRoomInProgressImpl implements _LeaveRoomInProgress {
  const _$LeaveRoomInProgressImpl({required this.room, this.engine = null});

  @override
  final Room room;
  @override
  @JsonKey()
  final RtcEngine? engine;

  @override
  String toString() {
    return 'VideoCallState.leaveRoomInProgress(room: $room, engine: $engine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRoomInProgressImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, engine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRoomInProgressImplCopyWith<_$LeaveRoomInProgressImpl> get copyWith =>
      __$$LeaveRoomInProgressImplCopyWithImpl<_$LeaveRoomInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return leaveRoomInProgress(room, engine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return leaveRoomInProgress?.call(room, engine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (leaveRoomInProgress != null) {
      return leaveRoomInProgress(room, engine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return leaveRoomInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return leaveRoomInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (leaveRoomInProgress != null) {
      return leaveRoomInProgress(this);
    }
    return orElse();
  }
}

abstract class _LeaveRoomInProgress implements VideoCallState {
  const factory _LeaveRoomInProgress(
      {required final Room room,
      final RtcEngine? engine}) = _$LeaveRoomInProgressImpl;

  @override
  Room get room;
  RtcEngine? get engine;
  @override
  @JsonKey(ignore: true)
  _$$LeaveRoomInProgressImplCopyWith<_$LeaveRoomInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveRoomSuccessImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$LeaveRoomSuccessImplCopyWith(_$LeaveRoomSuccessImpl value,
          $Res Function(_$LeaveRoomSuccessImpl) then) =
      __$$LeaveRoomSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room, RtcEngine? engine});
}

/// @nodoc
class __$$LeaveRoomSuccessImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$LeaveRoomSuccessImpl>
    implements _$$LeaveRoomSuccessImplCopyWith<$Res> {
  __$$LeaveRoomSuccessImplCopyWithImpl(_$LeaveRoomSuccessImpl _value,
      $Res Function(_$LeaveRoomSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? engine = freezed,
  }) {
    return _then(_$LeaveRoomSuccessImpl(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine?,
    ));
  }
}

/// @nodoc

class _$LeaveRoomSuccessImpl implements _LeaveRoomSuccess {
  const _$LeaveRoomSuccessImpl({required this.room, this.engine = null});

  @override
  final Room room;
  @override
  @JsonKey()
  final RtcEngine? engine;

  @override
  String toString() {
    return 'VideoCallState.leaveRoomSuccess(room: $room, engine: $engine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRoomSuccessImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, engine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRoomSuccessImplCopyWith<_$LeaveRoomSuccessImpl> get copyWith =>
      __$$LeaveRoomSuccessImplCopyWithImpl<_$LeaveRoomSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return leaveRoomSuccess(room, engine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return leaveRoomSuccess?.call(room, engine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (leaveRoomSuccess != null) {
      return leaveRoomSuccess(room, engine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return leaveRoomSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return leaveRoomSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (leaveRoomSuccess != null) {
      return leaveRoomSuccess(this);
    }
    return orElse();
  }
}

abstract class _LeaveRoomSuccess implements VideoCallState {
  const factory _LeaveRoomSuccess(
      {required final Room room,
      final RtcEngine? engine}) = _$LeaveRoomSuccessImpl;

  @override
  Room get room;
  RtcEngine? get engine;
  @override
  @JsonKey(ignore: true)
  _$$LeaveRoomSuccessImplCopyWith<_$LeaveRoomSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveRoomFailureImplCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$LeaveRoomFailureImplCopyWith(_$LeaveRoomFailureImpl value,
          $Res Function(_$LeaveRoomFailureImpl) then) =
      __$$LeaveRoomFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Room room, Failure failure});
}

/// @nodoc
class __$$LeaveRoomFailureImplCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$LeaveRoomFailureImpl>
    implements _$$LeaveRoomFailureImplCopyWith<$Res> {
  __$$LeaveRoomFailureImplCopyWithImpl(_$LeaveRoomFailureImpl _value,
      $Res Function(_$LeaveRoomFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? failure = null,
  }) {
    return _then(_$LeaveRoomFailureImpl(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$LeaveRoomFailureImpl implements _LeaveRoomFailure {
  const _$LeaveRoomFailureImpl({required this.room, required this.failure});

  @override
  final Room room;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'VideoCallState.leaveRoomFailure(room: $room, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRoomFailureImpl &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRoomFailureImplCopyWith<_$LeaveRoomFailureImpl> get copyWith =>
      __$$LeaveRoomFailureImplCopyWithImpl<_$LeaveRoomFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) initial,
    required TResult Function(Room room) initEngineInProgress,
    required TResult Function(Room room, RtcEngine engine) initEngineSuccess,
    required TResult Function(Room room, Failure failure) initEngineFailure,
    required TResult Function(Room room, RtcEngine engine) joinRoomInProgress,
    required TResult Function(Room room, RtcEngine engine, Failure failure)
        joinRoomFailure,
    required TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)
        joinRoomSuccess,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomInProgress,
    required TResult Function(Room room, RtcEngine? engine) leaveRoomSuccess,
    required TResult Function(Room room, Failure failure) leaveRoomFailure,
  }) {
    return leaveRoomFailure(room, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? initial,
    TResult? Function(Room room)? initEngineInProgress,
    TResult? Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult? Function(Room room, Failure failure)? initEngineFailure,
    TResult? Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult? Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult? Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult? Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult? Function(Room room, Failure failure)? leaveRoomFailure,
  }) {
    return leaveRoomFailure?.call(room, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? initial,
    TResult Function(Room room)? initEngineInProgress,
    TResult Function(Room room, RtcEngine engine)? initEngineSuccess,
    TResult Function(Room room, Failure failure)? initEngineFailure,
    TResult Function(Room room, RtcEngine engine)? joinRoomInProgress,
    TResult Function(Room room, RtcEngine engine, Failure failure)?
        joinRoomFailure,
    TResult Function(Room room, RtcEngine engine, int? localVideoUid,
            int? remoteVideoUid, bool isTakePhotoEnabled, Failure? failure)?
        joinRoomSuccess,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomInProgress,
    TResult Function(Room room, RtcEngine? engine)? leaveRoomSuccess,
    TResult Function(Room room, Failure failure)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (leaveRoomFailure != null) {
      return leaveRoomFailure(room, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitEngineInProgress value) initEngineInProgress,
    required TResult Function(_InitEngineSuccess value) initEngineSuccess,
    required TResult Function(_InitEngineFailure value) initEngineFailure,
    required TResult Function(_JoinRoomInProgress value) joinRoomInProgress,
    required TResult Function(_JoinRoomFailure value) joinRoomFailure,
    required TResult Function(_JoinRoomSuccess value) joinRoomSuccess,
    required TResult Function(_LeaveRoomInProgress value) leaveRoomInProgress,
    required TResult Function(_LeaveRoomSuccess value) leaveRoomSuccess,
    required TResult Function(_LeaveRoomFailure value) leaveRoomFailure,
  }) {
    return leaveRoomFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult? Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult? Function(_InitEngineFailure value)? initEngineFailure,
    TResult? Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult? Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult? Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult? Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult? Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult? Function(_LeaveRoomFailure value)? leaveRoomFailure,
  }) {
    return leaveRoomFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitEngineInProgress value)? initEngineInProgress,
    TResult Function(_InitEngineSuccess value)? initEngineSuccess,
    TResult Function(_InitEngineFailure value)? initEngineFailure,
    TResult Function(_JoinRoomInProgress value)? joinRoomInProgress,
    TResult Function(_JoinRoomFailure value)? joinRoomFailure,
    TResult Function(_JoinRoomSuccess value)? joinRoomSuccess,
    TResult Function(_LeaveRoomInProgress value)? leaveRoomInProgress,
    TResult Function(_LeaveRoomSuccess value)? leaveRoomSuccess,
    TResult Function(_LeaveRoomFailure value)? leaveRoomFailure,
    required TResult orElse(),
  }) {
    if (leaveRoomFailure != null) {
      return leaveRoomFailure(this);
    }
    return orElse();
  }
}

abstract class _LeaveRoomFailure implements VideoCallState {
  const factory _LeaveRoomFailure(
      {required final Room room,
      required final Failure failure}) = _$LeaveRoomFailureImpl;

  @override
  Room get room;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$LeaveRoomFailureImplCopyWith<_$LeaveRoomFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
