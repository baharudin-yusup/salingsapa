// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_call_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoCallControlEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() flipCameraStarted,
    required TResult Function() muteAudioStarted,
    required TResult Function() muteVideoStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? flipCameraStarted,
    TResult? Function()? muteAudioStarted,
    TResult? Function()? muteVideoStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? flipCameraStarted,
    TResult Function()? muteAudioStarted,
    TResult Function()? muteVideoStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FlipCameraStarted value) flipCameraStarted,
    required TResult Function(_MuteAudioStarted value) muteAudioStarted,
    required TResult Function(_MuteVideoStarted value) muteVideoStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult? Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult? Function(_MuteVideoStarted value)? muteVideoStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult Function(_MuteVideoStarted value)? muteVideoStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallControlEventCopyWith<$Res> {
  factory $VideoCallControlEventCopyWith(VideoCallControlEvent value,
          $Res Function(VideoCallControlEvent) then) =
      _$VideoCallControlEventCopyWithImpl<$Res, VideoCallControlEvent>;
}

/// @nodoc
class _$VideoCallControlEventCopyWithImpl<$Res,
        $Val extends VideoCallControlEvent>
    implements $VideoCallControlEventCopyWith<$Res> {
  _$VideoCallControlEventCopyWithImpl(this._value, this._then);

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
    extends _$VideoCallControlEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'VideoCallControlEvent.started()';
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
    required TResult Function() flipCameraStarted,
    required TResult Function() muteAudioStarted,
    required TResult Function() muteVideoStarted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? flipCameraStarted,
    TResult? Function()? muteAudioStarted,
    TResult? Function()? muteVideoStarted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? flipCameraStarted,
    TResult Function()? muteAudioStarted,
    TResult Function()? muteVideoStarted,
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
    required TResult Function(_FlipCameraStarted value) flipCameraStarted,
    required TResult Function(_MuteAudioStarted value) muteAudioStarted,
    required TResult Function(_MuteVideoStarted value) muteVideoStarted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult? Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult? Function(_MuteVideoStarted value)? muteVideoStarted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult Function(_MuteVideoStarted value)? muteVideoStarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements VideoCallControlEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FlipCameraStartedCopyWith<$Res> {
  factory _$$_FlipCameraStartedCopyWith(_$_FlipCameraStarted value,
          $Res Function(_$_FlipCameraStarted) then) =
      __$$_FlipCameraStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FlipCameraStartedCopyWithImpl<$Res>
    extends _$VideoCallControlEventCopyWithImpl<$Res, _$_FlipCameraStarted>
    implements _$$_FlipCameraStartedCopyWith<$Res> {
  __$$_FlipCameraStartedCopyWithImpl(
      _$_FlipCameraStarted _value, $Res Function(_$_FlipCameraStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FlipCameraStarted implements _FlipCameraStarted {
  const _$_FlipCameraStarted();

  @override
  String toString() {
    return 'VideoCallControlEvent.flipCameraStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlipCameraStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() flipCameraStarted,
    required TResult Function() muteAudioStarted,
    required TResult Function() muteVideoStarted,
  }) {
    return flipCameraStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? flipCameraStarted,
    TResult? Function()? muteAudioStarted,
    TResult? Function()? muteVideoStarted,
  }) {
    return flipCameraStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? flipCameraStarted,
    TResult Function()? muteAudioStarted,
    TResult Function()? muteVideoStarted,
    required TResult orElse(),
  }) {
    if (flipCameraStarted != null) {
      return flipCameraStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FlipCameraStarted value) flipCameraStarted,
    required TResult Function(_MuteAudioStarted value) muteAudioStarted,
    required TResult Function(_MuteVideoStarted value) muteVideoStarted,
  }) {
    return flipCameraStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult? Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult? Function(_MuteVideoStarted value)? muteVideoStarted,
  }) {
    return flipCameraStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult Function(_MuteVideoStarted value)? muteVideoStarted,
    required TResult orElse(),
  }) {
    if (flipCameraStarted != null) {
      return flipCameraStarted(this);
    }
    return orElse();
  }
}

abstract class _FlipCameraStarted implements VideoCallControlEvent {
  const factory _FlipCameraStarted() = _$_FlipCameraStarted;
}

/// @nodoc
abstract class _$$_MuteAudioStartedCopyWith<$Res> {
  factory _$$_MuteAudioStartedCopyWith(
          _$_MuteAudioStarted value, $Res Function(_$_MuteAudioStarted) then) =
      __$$_MuteAudioStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MuteAudioStartedCopyWithImpl<$Res>
    extends _$VideoCallControlEventCopyWithImpl<$Res, _$_MuteAudioStarted>
    implements _$$_MuteAudioStartedCopyWith<$Res> {
  __$$_MuteAudioStartedCopyWithImpl(
      _$_MuteAudioStarted _value, $Res Function(_$_MuteAudioStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MuteAudioStarted implements _MuteAudioStarted {
  const _$_MuteAudioStarted();

  @override
  String toString() {
    return 'VideoCallControlEvent.muteAudioStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MuteAudioStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() flipCameraStarted,
    required TResult Function() muteAudioStarted,
    required TResult Function() muteVideoStarted,
  }) {
    return muteAudioStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? flipCameraStarted,
    TResult? Function()? muteAudioStarted,
    TResult? Function()? muteVideoStarted,
  }) {
    return muteAudioStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? flipCameraStarted,
    TResult Function()? muteAudioStarted,
    TResult Function()? muteVideoStarted,
    required TResult orElse(),
  }) {
    if (muteAudioStarted != null) {
      return muteAudioStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FlipCameraStarted value) flipCameraStarted,
    required TResult Function(_MuteAudioStarted value) muteAudioStarted,
    required TResult Function(_MuteVideoStarted value) muteVideoStarted,
  }) {
    return muteAudioStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult? Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult? Function(_MuteVideoStarted value)? muteVideoStarted,
  }) {
    return muteAudioStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult Function(_MuteVideoStarted value)? muteVideoStarted,
    required TResult orElse(),
  }) {
    if (muteAudioStarted != null) {
      return muteAudioStarted(this);
    }
    return orElse();
  }
}

abstract class _MuteAudioStarted implements VideoCallControlEvent {
  const factory _MuteAudioStarted() = _$_MuteAudioStarted;
}

/// @nodoc
abstract class _$$_MuteVideoStartedCopyWith<$Res> {
  factory _$$_MuteVideoStartedCopyWith(
          _$_MuteVideoStarted value, $Res Function(_$_MuteVideoStarted) then) =
      __$$_MuteVideoStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MuteVideoStartedCopyWithImpl<$Res>
    extends _$VideoCallControlEventCopyWithImpl<$Res, _$_MuteVideoStarted>
    implements _$$_MuteVideoStartedCopyWith<$Res> {
  __$$_MuteVideoStartedCopyWithImpl(
      _$_MuteVideoStarted _value, $Res Function(_$_MuteVideoStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MuteVideoStarted implements _MuteVideoStarted {
  const _$_MuteVideoStarted();

  @override
  String toString() {
    return 'VideoCallControlEvent.muteVideoStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MuteVideoStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() flipCameraStarted,
    required TResult Function() muteAudioStarted,
    required TResult Function() muteVideoStarted,
  }) {
    return muteVideoStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? flipCameraStarted,
    TResult? Function()? muteAudioStarted,
    TResult? Function()? muteVideoStarted,
  }) {
    return muteVideoStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? flipCameraStarted,
    TResult Function()? muteAudioStarted,
    TResult Function()? muteVideoStarted,
    required TResult orElse(),
  }) {
    if (muteVideoStarted != null) {
      return muteVideoStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FlipCameraStarted value) flipCameraStarted,
    required TResult Function(_MuteAudioStarted value) muteAudioStarted,
    required TResult Function(_MuteVideoStarted value) muteVideoStarted,
  }) {
    return muteVideoStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult? Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult? Function(_MuteVideoStarted value)? muteVideoStarted,
  }) {
    return muteVideoStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FlipCameraStarted value)? flipCameraStarted,
    TResult Function(_MuteAudioStarted value)? muteAudioStarted,
    TResult Function(_MuteVideoStarted value)? muteVideoStarted,
    required TResult orElse(),
  }) {
    if (muteVideoStarted != null) {
      return muteVideoStarted(this);
    }
    return orElse();
  }
}

abstract class _MuteVideoStarted implements VideoCallControlEvent {
  const factory _MuteVideoStarted() = _$_MuteVideoStarted;
}

/// @nodoc
mixin _$VideoCallControlState {
  bool get isAudioMuted => throw _privateConstructorUsedError;
  bool get isVideoMuted => throw _privateConstructorUsedError;
  bool get isUsingFrontCamera => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        initial,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlInProgress,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlSuccess,
    required TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)
        changeControlFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult? Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeControlInProgress value)
        changeControlInProgress,
    required TResult Function(_ChangeControlSuccess value) changeControlSuccess,
    required TResult Function(_ChangeControlFailure value) changeControlFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult? Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult? Function(_ChangeControlFailure value)? changeControlFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult Function(_ChangeControlFailure value)? changeControlFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoCallControlStateCopyWith<VideoCallControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallControlStateCopyWith<$Res> {
  factory $VideoCallControlStateCopyWith(VideoCallControlState value,
          $Res Function(VideoCallControlState) then) =
      _$VideoCallControlStateCopyWithImpl<$Res, VideoCallControlState>;
  @useResult
  $Res call({bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera});
}

/// @nodoc
class _$VideoCallControlStateCopyWithImpl<$Res,
        $Val extends VideoCallControlState>
    implements $VideoCallControlStateCopyWith<$Res> {
  _$VideoCallControlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAudioMuted = null,
    Object? isVideoMuted = null,
    Object? isUsingFrontCamera = null,
  }) {
    return _then(_value.copyWith(
      isAudioMuted: null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoMuted: null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsingFrontCamera: null == isUsingFrontCamera
          ? _value.isUsingFrontCamera
          : isUsingFrontCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $VideoCallControlStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$VideoCallControlStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAudioMuted = null,
    Object? isVideoMuted = null,
    Object? isUsingFrontCamera = null,
  }) {
    return _then(_$_Initial(
      null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isUsingFrontCamera
          ? _value.isUsingFrontCamera
          : isUsingFrontCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      [this.isAudioMuted = false,
      this.isVideoMuted = false,
      this.isUsingFrontCamera = true]);

  @override
  @JsonKey()
  final bool isAudioMuted;
  @override
  @JsonKey()
  final bool isVideoMuted;
  @override
  @JsonKey()
  final bool isUsingFrontCamera;

  @override
  String toString() {
    return 'VideoCallControlState.initial(isAudioMuted: $isAudioMuted, isVideoMuted: $isVideoMuted, isUsingFrontCamera: $isUsingFrontCamera)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isAudioMuted, isAudioMuted) ||
                other.isAudioMuted == isAudioMuted) &&
            (identical(other.isVideoMuted, isVideoMuted) ||
                other.isVideoMuted == isVideoMuted) &&
            (identical(other.isUsingFrontCamera, isUsingFrontCamera) ||
                other.isUsingFrontCamera == isUsingFrontCamera));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isAudioMuted, isVideoMuted, isUsingFrontCamera);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        initial,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlInProgress,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlSuccess,
    required TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)
        changeControlFailure,
  }) {
    return initial(isAudioMuted, isVideoMuted, isUsingFrontCamera);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult? Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
  }) {
    return initial?.call(isAudioMuted, isVideoMuted, isUsingFrontCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isAudioMuted, isVideoMuted, isUsingFrontCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeControlInProgress value)
        changeControlInProgress,
    required TResult Function(_ChangeControlSuccess value) changeControlSuccess,
    required TResult Function(_ChangeControlFailure value) changeControlFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult? Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult? Function(_ChangeControlFailure value)? changeControlFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult Function(_ChangeControlFailure value)? changeControlFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoCallControlState {
  const factory _Initial(
      [final bool isAudioMuted,
      final bool isVideoMuted,
      final bool isUsingFrontCamera]) = _$_Initial;

  @override
  bool get isAudioMuted;
  @override
  bool get isVideoMuted;
  @override
  bool get isUsingFrontCamera;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeControlInProgressCopyWith<$Res>
    implements $VideoCallControlStateCopyWith<$Res> {
  factory _$$_ChangeControlInProgressCopyWith(_$_ChangeControlInProgress value,
          $Res Function(_$_ChangeControlInProgress) then) =
      __$$_ChangeControlInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera});
}

/// @nodoc
class __$$_ChangeControlInProgressCopyWithImpl<$Res>
    extends _$VideoCallControlStateCopyWithImpl<$Res,
        _$_ChangeControlInProgress>
    implements _$$_ChangeControlInProgressCopyWith<$Res> {
  __$$_ChangeControlInProgressCopyWithImpl(_$_ChangeControlInProgress _value,
      $Res Function(_$_ChangeControlInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAudioMuted = null,
    Object? isVideoMuted = null,
    Object? isUsingFrontCamera = null,
  }) {
    return _then(_$_ChangeControlInProgress(
      isAudioMuted: null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoMuted: null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsingFrontCamera: null == isUsingFrontCamera
          ? _value.isUsingFrontCamera
          : isUsingFrontCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeControlInProgress implements _ChangeControlInProgress {
  const _$_ChangeControlInProgress(
      {required this.isAudioMuted,
      required this.isVideoMuted,
      required this.isUsingFrontCamera});

  @override
  final bool isAudioMuted;
  @override
  final bool isVideoMuted;
  @override
  final bool isUsingFrontCamera;

  @override
  String toString() {
    return 'VideoCallControlState.changeControlInProgress(isAudioMuted: $isAudioMuted, isVideoMuted: $isVideoMuted, isUsingFrontCamera: $isUsingFrontCamera)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeControlInProgress &&
            (identical(other.isAudioMuted, isAudioMuted) ||
                other.isAudioMuted == isAudioMuted) &&
            (identical(other.isVideoMuted, isVideoMuted) ||
                other.isVideoMuted == isVideoMuted) &&
            (identical(other.isUsingFrontCamera, isUsingFrontCamera) ||
                other.isUsingFrontCamera == isUsingFrontCamera));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isAudioMuted, isVideoMuted, isUsingFrontCamera);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeControlInProgressCopyWith<_$_ChangeControlInProgress>
      get copyWith =>
          __$$_ChangeControlInProgressCopyWithImpl<_$_ChangeControlInProgress>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        initial,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlInProgress,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlSuccess,
    required TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)
        changeControlFailure,
  }) {
    return changeControlInProgress(
        isAudioMuted, isVideoMuted, isUsingFrontCamera);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult? Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
  }) {
    return changeControlInProgress?.call(
        isAudioMuted, isVideoMuted, isUsingFrontCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
    required TResult orElse(),
  }) {
    if (changeControlInProgress != null) {
      return changeControlInProgress(
          isAudioMuted, isVideoMuted, isUsingFrontCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeControlInProgress value)
        changeControlInProgress,
    required TResult Function(_ChangeControlSuccess value) changeControlSuccess,
    required TResult Function(_ChangeControlFailure value) changeControlFailure,
  }) {
    return changeControlInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult? Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult? Function(_ChangeControlFailure value)? changeControlFailure,
  }) {
    return changeControlInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult Function(_ChangeControlFailure value)? changeControlFailure,
    required TResult orElse(),
  }) {
    if (changeControlInProgress != null) {
      return changeControlInProgress(this);
    }
    return orElse();
  }
}

abstract class _ChangeControlInProgress implements VideoCallControlState {
  const factory _ChangeControlInProgress(
      {required final bool isAudioMuted,
      required final bool isVideoMuted,
      required final bool isUsingFrontCamera}) = _$_ChangeControlInProgress;

  @override
  bool get isAudioMuted;
  @override
  bool get isVideoMuted;
  @override
  bool get isUsingFrontCamera;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeControlInProgressCopyWith<_$_ChangeControlInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeControlSuccessCopyWith<$Res>
    implements $VideoCallControlStateCopyWith<$Res> {
  factory _$$_ChangeControlSuccessCopyWith(_$_ChangeControlSuccess value,
          $Res Function(_$_ChangeControlSuccess) then) =
      __$$_ChangeControlSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera});
}

/// @nodoc
class __$$_ChangeControlSuccessCopyWithImpl<$Res>
    extends _$VideoCallControlStateCopyWithImpl<$Res, _$_ChangeControlSuccess>
    implements _$$_ChangeControlSuccessCopyWith<$Res> {
  __$$_ChangeControlSuccessCopyWithImpl(_$_ChangeControlSuccess _value,
      $Res Function(_$_ChangeControlSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAudioMuted = null,
    Object? isVideoMuted = null,
    Object? isUsingFrontCamera = null,
  }) {
    return _then(_$_ChangeControlSuccess(
      isAudioMuted: null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoMuted: null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsingFrontCamera: null == isUsingFrontCamera
          ? _value.isUsingFrontCamera
          : isUsingFrontCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeControlSuccess implements _ChangeControlSuccess {
  const _$_ChangeControlSuccess(
      {required this.isAudioMuted,
      required this.isVideoMuted,
      required this.isUsingFrontCamera});

  @override
  final bool isAudioMuted;
  @override
  final bool isVideoMuted;
  @override
  final bool isUsingFrontCamera;

  @override
  String toString() {
    return 'VideoCallControlState.changeControlSuccess(isAudioMuted: $isAudioMuted, isVideoMuted: $isVideoMuted, isUsingFrontCamera: $isUsingFrontCamera)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeControlSuccess &&
            (identical(other.isAudioMuted, isAudioMuted) ||
                other.isAudioMuted == isAudioMuted) &&
            (identical(other.isVideoMuted, isVideoMuted) ||
                other.isVideoMuted == isVideoMuted) &&
            (identical(other.isUsingFrontCamera, isUsingFrontCamera) ||
                other.isUsingFrontCamera == isUsingFrontCamera));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isAudioMuted, isVideoMuted, isUsingFrontCamera);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeControlSuccessCopyWith<_$_ChangeControlSuccess> get copyWith =>
      __$$_ChangeControlSuccessCopyWithImpl<_$_ChangeControlSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        initial,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlInProgress,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlSuccess,
    required TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)
        changeControlFailure,
  }) {
    return changeControlSuccess(isAudioMuted, isVideoMuted, isUsingFrontCamera);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult? Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
  }) {
    return changeControlSuccess?.call(
        isAudioMuted, isVideoMuted, isUsingFrontCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
    required TResult orElse(),
  }) {
    if (changeControlSuccess != null) {
      return changeControlSuccess(
          isAudioMuted, isVideoMuted, isUsingFrontCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeControlInProgress value)
        changeControlInProgress,
    required TResult Function(_ChangeControlSuccess value) changeControlSuccess,
    required TResult Function(_ChangeControlFailure value) changeControlFailure,
  }) {
    return changeControlSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult? Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult? Function(_ChangeControlFailure value)? changeControlFailure,
  }) {
    return changeControlSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult Function(_ChangeControlFailure value)? changeControlFailure,
    required TResult orElse(),
  }) {
    if (changeControlSuccess != null) {
      return changeControlSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeControlSuccess implements VideoCallControlState {
  const factory _ChangeControlSuccess(
      {required final bool isAudioMuted,
      required final bool isVideoMuted,
      required final bool isUsingFrontCamera}) = _$_ChangeControlSuccess;

  @override
  bool get isAudioMuted;
  @override
  bool get isVideoMuted;
  @override
  bool get isUsingFrontCamera;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeControlSuccessCopyWith<_$_ChangeControlSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeControlFailureCopyWith<$Res>
    implements $VideoCallControlStateCopyWith<$Res> {
  factory _$$_ChangeControlFailureCopyWith(_$_ChangeControlFailure value,
          $Res Function(_$_ChangeControlFailure) then) =
      __$$_ChangeControlFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAudioMuted,
      bool isVideoMuted,
      bool isUsingFrontCamera,
      String errorMessage});
}

/// @nodoc
class __$$_ChangeControlFailureCopyWithImpl<$Res>
    extends _$VideoCallControlStateCopyWithImpl<$Res, _$_ChangeControlFailure>
    implements _$$_ChangeControlFailureCopyWith<$Res> {
  __$$_ChangeControlFailureCopyWithImpl(_$_ChangeControlFailure _value,
      $Res Function(_$_ChangeControlFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAudioMuted = null,
    Object? isVideoMuted = null,
    Object? isUsingFrontCamera = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_ChangeControlFailure(
      isAudioMuted: null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoMuted: null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsingFrontCamera: null == isUsingFrontCamera
          ? _value.isUsingFrontCamera
          : isUsingFrontCamera // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeControlFailure implements _ChangeControlFailure {
  const _$_ChangeControlFailure(
      {required this.isAudioMuted,
      required this.isVideoMuted,
      required this.isUsingFrontCamera,
      required this.errorMessage});

  @override
  final bool isAudioMuted;
  @override
  final bool isVideoMuted;
  @override
  final bool isUsingFrontCamera;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'VideoCallControlState.changeControlFailure(isAudioMuted: $isAudioMuted, isVideoMuted: $isVideoMuted, isUsingFrontCamera: $isUsingFrontCamera, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeControlFailure &&
            (identical(other.isAudioMuted, isAudioMuted) ||
                other.isAudioMuted == isAudioMuted) &&
            (identical(other.isVideoMuted, isVideoMuted) ||
                other.isVideoMuted == isVideoMuted) &&
            (identical(other.isUsingFrontCamera, isUsingFrontCamera) ||
                other.isUsingFrontCamera == isUsingFrontCamera) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAudioMuted, isVideoMuted,
      isUsingFrontCamera, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeControlFailureCopyWith<_$_ChangeControlFailure> get copyWith =>
      __$$_ChangeControlFailureCopyWithImpl<_$_ChangeControlFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        initial,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlInProgress,
    required TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)
        changeControlSuccess,
    required TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)
        changeControlFailure,
  }) {
    return changeControlFailure(
        isAudioMuted, isVideoMuted, isUsingFrontCamera, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult? Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult? Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
  }) {
    return changeControlFailure?.call(
        isAudioMuted, isVideoMuted, isUsingFrontCamera, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        initial,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlInProgress,
    TResult Function(
            bool isAudioMuted, bool isVideoMuted, bool isUsingFrontCamera)?
        changeControlSuccess,
    TResult Function(bool isAudioMuted, bool isVideoMuted,
            bool isUsingFrontCamera, String errorMessage)?
        changeControlFailure,
    required TResult orElse(),
  }) {
    if (changeControlFailure != null) {
      return changeControlFailure(
          isAudioMuted, isVideoMuted, isUsingFrontCamera, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeControlInProgress value)
        changeControlInProgress,
    required TResult Function(_ChangeControlSuccess value) changeControlSuccess,
    required TResult Function(_ChangeControlFailure value) changeControlFailure,
  }) {
    return changeControlFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult? Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult? Function(_ChangeControlFailure value)? changeControlFailure,
  }) {
    return changeControlFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeControlInProgress value)? changeControlInProgress,
    TResult Function(_ChangeControlSuccess value)? changeControlSuccess,
    TResult Function(_ChangeControlFailure value)? changeControlFailure,
    required TResult orElse(),
  }) {
    if (changeControlFailure != null) {
      return changeControlFailure(this);
    }
    return orElse();
  }
}

abstract class _ChangeControlFailure implements VideoCallControlState {
  const factory _ChangeControlFailure(
      {required final bool isAudioMuted,
      required final bool isVideoMuted,
      required final bool isUsingFrontCamera,
      required final String errorMessage}) = _$_ChangeControlFailure;

  @override
  bool get isAudioMuted;
  @override
  bool get isVideoMuted;
  @override
  bool get isUsingFrontCamera;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeControlFailureCopyWith<_$_ChangeControlFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
