// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speech_recognition_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpeechRecognitionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechRecognitionEventCopyWith<$Res> {
  factory $SpeechRecognitionEventCopyWith(SpeechRecognitionEvent value,
          $Res Function(SpeechRecognitionEvent) then) =
      _$SpeechRecognitionEventCopyWithImpl<$Res, SpeechRecognitionEvent>;
}

/// @nodoc
class _$SpeechRecognitionEventCopyWithImpl<$Res,
        $Val extends SpeechRecognitionEvent>
    implements $SpeechRecognitionEventCopyWith<$Res> {
  _$SpeechRecognitionEventCopyWithImpl(this._value, this._then);

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
    extends _$SpeechRecognitionEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SpeechRecognitionEvent.started()';
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
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
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
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SpeechRecognitionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ToggleFeatureStartedImplCopyWith<$Res> {
  factory _$$ToggleFeatureStartedImplCopyWith(_$ToggleFeatureStartedImpl value,
          $Res Function(_$ToggleFeatureStartedImpl) then) =
      __$$ToggleFeatureStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class __$$ToggleFeatureStartedImplCopyWithImpl<$Res>
    extends _$SpeechRecognitionEventCopyWithImpl<$Res,
        _$ToggleFeatureStartedImpl>
    implements _$$ToggleFeatureStartedImplCopyWith<$Res> {
  __$$ToggleFeatureStartedImplCopyWithImpl(_$ToggleFeatureStartedImpl _value,
      $Res Function(_$ToggleFeatureStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
  }) {
    return _then(_$ToggleFeatureStartedImpl(
      null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleFeatureStartedImpl implements _ToggleFeatureStarted {
  const _$ToggleFeatureStartedImpl([this.isEnabled = false]);

  @override
  @JsonKey()
  final bool isEnabled;

  @override
  String toString() {
    return 'SpeechRecognitionEvent.toggleFeatureStarted(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFeatureStartedImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFeatureStartedImplCopyWith<_$ToggleFeatureStartedImpl>
      get copyWith =>
          __$$ToggleFeatureStartedImplCopyWithImpl<_$ToggleFeatureStartedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
  }) {
    return toggleFeatureStarted(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
  }) {
    return toggleFeatureStarted?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    required TResult orElse(),
  }) {
    if (toggleFeatureStarted != null) {
      return toggleFeatureStarted(isEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
  }) {
    return toggleFeatureStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
  }) {
    return toggleFeatureStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    required TResult orElse(),
  }) {
    if (toggleFeatureStarted != null) {
      return toggleFeatureStarted(this);
    }
    return orElse();
  }
}

abstract class _ToggleFeatureStarted implements SpeechRecognitionEvent {
  const factory _ToggleFeatureStarted([final bool isEnabled]) =
      _$ToggleFeatureStartedImpl;

  bool get isEnabled;
  @JsonKey(ignore: true)
  _$$ToggleFeatureStartedImplCopyWith<_$ToggleFeatureStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusChangedImplCopyWith<$Res> {
  factory _$$StatusChangedImplCopyWith(
          _$StatusChangedImpl value, $Res Function(_$StatusChangedImpl) then) =
      __$$StatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecognitionStatus status});
}

/// @nodoc
class __$$StatusChangedImplCopyWithImpl<$Res>
    extends _$SpeechRecognitionEventCopyWithImpl<$Res, _$StatusChangedImpl>
    implements _$$StatusChangedImplCopyWith<$Res> {
  __$$StatusChangedImplCopyWithImpl(
      _$StatusChangedImpl _value, $Res Function(_$StatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$StatusChangedImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecognitionStatus,
    ));
  }
}

/// @nodoc

class _$StatusChangedImpl implements _StatusChanged {
  const _$StatusChangedImpl(this.status);

  @override
  final RecognitionStatus status;

  @override
  String toString() {
    return 'SpeechRecognitionEvent.statusChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusChangedImplCopyWith<_$StatusChangedImpl> get copyWith =>
      __$$StatusChangedImplCopyWithImpl<_$StatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
  }) {
    return statusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class _StatusChanged implements SpeechRecognitionEvent {
  const factory _StatusChanged(final RecognitionStatus status) =
      _$StatusChangedImpl;

  RecognitionStatus get status;
  @JsonKey(ignore: true)
  _$$StatusChangedImplCopyWith<_$StatusChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CaptionReceivedImplCopyWith<$Res> {
  factory _$$CaptionReceivedImplCopyWith(_$CaptionReceivedImpl value,
          $Res Function(_$CaptionReceivedImpl) then) =
      __$$CaptionReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Caption caption});
}

/// @nodoc
class __$$CaptionReceivedImplCopyWithImpl<$Res>
    extends _$SpeechRecognitionEventCopyWithImpl<$Res, _$CaptionReceivedImpl>
    implements _$$CaptionReceivedImplCopyWith<$Res> {
  __$$CaptionReceivedImplCopyWithImpl(
      _$CaptionReceivedImpl _value, $Res Function(_$CaptionReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caption = null,
  }) {
    return _then(_$CaptionReceivedImpl(
      null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption,
    ));
  }
}

/// @nodoc

class _$CaptionReceivedImpl implements _CaptionReceived {
  const _$CaptionReceivedImpl(this.caption);

  @override
  final Caption caption;

  @override
  String toString() {
    return 'SpeechRecognitionEvent.captionReceived(caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptionReceivedImpl &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptionReceivedImplCopyWith<_$CaptionReceivedImpl> get copyWith =>
      __$$CaptionReceivedImplCopyWithImpl<_$CaptionReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
  }) {
    return captionReceived(caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
  }) {
    return captionReceived?.call(caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    required TResult orElse(),
  }) {
    if (captionReceived != null) {
      return captionReceived(caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
  }) {
    return captionReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
  }) {
    return captionReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    required TResult orElse(),
  }) {
    if (captionReceived != null) {
      return captionReceived(this);
    }
    return orElse();
  }
}

abstract class _CaptionReceived implements SpeechRecognitionEvent {
  const factory _CaptionReceived(final Caption caption) = _$CaptionReceivedImpl;

  Caption get caption;
  @JsonKey(ignore: true)
  _$$CaptionReceivedImplCopyWith<_$CaptionReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpeechRecognitionState {
  bool get isReady => throw _privateConstructorUsedError;
  RecognitionStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isReady, RecognitionStatus status) initial,
    required TResult Function(
            bool isReady, RecognitionStatus status, Failure failure)
        failure,
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption caption)
        caption,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isReady, RecognitionStatus status)? initial,
    TResult? Function(bool isReady, RecognitionStatus status, Failure failure)?
        failure,
    TResult? Function(bool isReady, RecognitionStatus status, Caption caption)?
        caption,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isReady, RecognitionStatus status)? initial,
    TResult Function(bool isReady, RecognitionStatus status, Failure failure)?
        failure,
    TResult Function(bool isReady, RecognitionStatus status, Caption caption)?
        caption,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Caption value) caption,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Caption value)? caption,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_Caption value)? caption,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpeechRecognitionStateCopyWith<SpeechRecognitionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechRecognitionStateCopyWith<$Res> {
  factory $SpeechRecognitionStateCopyWith(SpeechRecognitionState value,
          $Res Function(SpeechRecognitionState) then) =
      _$SpeechRecognitionStateCopyWithImpl<$Res, SpeechRecognitionState>;
  @useResult
  $Res call({bool isReady, RecognitionStatus status});
}

/// @nodoc
class _$SpeechRecognitionStateCopyWithImpl<$Res,
        $Val extends SpeechRecognitionState>
    implements $SpeechRecognitionStateCopyWith<$Res> {
  _$SpeechRecognitionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecognitionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SpeechRecognitionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReady, RecognitionStatus status});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SpeechRecognitionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
  }) {
    return _then(_$InitialImpl(
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecognitionStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isReady = false, this.status = RecognitionStatus.off});

  @override
  @JsonKey()
  final bool isReady;
  @override
  @JsonKey()
  final RecognitionStatus status;

  @override
  String toString() {
    return 'SpeechRecognitionState.initial(isReady: $isReady, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReady, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isReady, RecognitionStatus status) initial,
    required TResult Function(
            bool isReady, RecognitionStatus status, Failure failure)
        failure,
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption caption)
        caption,
  }) {
    return initial(isReady, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isReady, RecognitionStatus status)? initial,
    TResult? Function(bool isReady, RecognitionStatus status, Failure failure)?
        failure,
    TResult? Function(bool isReady, RecognitionStatus status, Caption caption)?
        caption,
  }) {
    return initial?.call(isReady, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isReady, RecognitionStatus status)? initial,
    TResult Function(bool isReady, RecognitionStatus status, Failure failure)?
        failure,
    TResult Function(bool isReady, RecognitionStatus status, Caption caption)?
        caption,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isReady, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Caption value) caption,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Caption value)? caption,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_Caption value)? caption,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SpeechRecognitionState {
  const factory _Initial({final bool isReady, final RecognitionStatus status}) =
      _$InitialImpl;

  @override
  bool get isReady;
  @override
  RecognitionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $SpeechRecognitionStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReady, RecognitionStatus status, Failure failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SpeechRecognitionStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecognitionStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(
      {required this.isReady, required this.status, required this.failure});

  @override
  final bool isReady;
  @override
  final RecognitionStatus status;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'SpeechRecognitionState.failure(isReady: $isReady, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReady, status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isReady, RecognitionStatus status) initial,
    required TResult Function(
            bool isReady, RecognitionStatus status, Failure failure)
        failure,
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption caption)
        caption,
  }) {
    return failure(isReady, status, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isReady, RecognitionStatus status)? initial,
    TResult? Function(bool isReady, RecognitionStatus status, Failure failure)?
        failure,
    TResult? Function(bool isReady, RecognitionStatus status, Caption caption)?
        caption,
  }) {
    return failure?.call(isReady, status, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isReady, RecognitionStatus status)? initial,
    TResult Function(bool isReady, RecognitionStatus status, Failure failure)?
        failure,
    TResult Function(bool isReady, RecognitionStatus status, Caption caption)?
        caption,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(isReady, status, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Caption value) caption,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Caption value)? caption,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_Caption value)? caption,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SpeechRecognitionState {
  const factory _Failure(
      {required final bool isReady,
      required final RecognitionStatus status,
      required final Failure failure}) = _$FailureImpl;

  @override
  bool get isReady;
  @override
  RecognitionStatus get status;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CaptionImplCopyWith<$Res>
    implements $SpeechRecognitionStateCopyWith<$Res> {
  factory _$$CaptionImplCopyWith(
          _$CaptionImpl value, $Res Function(_$CaptionImpl) then) =
      __$$CaptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReady, RecognitionStatus status, Caption caption});
}

/// @nodoc
class __$$CaptionImplCopyWithImpl<$Res>
    extends _$SpeechRecognitionStateCopyWithImpl<$Res, _$CaptionImpl>
    implements _$$CaptionImplCopyWith<$Res> {
  __$$CaptionImplCopyWithImpl(
      _$CaptionImpl _value, $Res Function(_$CaptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
    Object? caption = null,
  }) {
    return _then(_$CaptionImpl(
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecognitionStatus,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption,
    ));
  }
}

/// @nodoc

class _$CaptionImpl implements _Caption {
  const _$CaptionImpl(
      {required this.isReady, required this.status, required this.caption});

  @override
  final bool isReady;
  @override
  final RecognitionStatus status;
  @override
  final Caption caption;

  @override
  String toString() {
    return 'SpeechRecognitionState.caption(isReady: $isReady, status: $status, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptionImpl &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReady, status, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptionImplCopyWith<_$CaptionImpl> get copyWith =>
      __$$CaptionImplCopyWithImpl<_$CaptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isReady, RecognitionStatus status) initial,
    required TResult Function(
            bool isReady, RecognitionStatus status, Failure failure)
        failure,
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption caption)
        caption,
  }) {
    return caption(isReady, status, this.caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isReady, RecognitionStatus status)? initial,
    TResult? Function(bool isReady, RecognitionStatus status, Failure failure)?
        failure,
    TResult? Function(bool isReady, RecognitionStatus status, Caption caption)?
        caption,
  }) {
    return caption?.call(isReady, status, this.caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isReady, RecognitionStatus status)? initial,
    TResult Function(bool isReady, RecognitionStatus status, Failure failure)?
        failure,
    TResult Function(bool isReady, RecognitionStatus status, Caption caption)?
        caption,
    required TResult orElse(),
  }) {
    if (caption != null) {
      return caption(isReady, status, this.caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Caption value) caption,
  }) {
    return caption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Caption value)? caption,
  }) {
    return caption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_Caption value)? caption,
    required TResult orElse(),
  }) {
    if (caption != null) {
      return caption(this);
    }
    return orElse();
  }
}

abstract class _Caption implements SpeechRecognitionState {
  const factory _Caption(
      {required final bool isReady,
      required final RecognitionStatus status,
      required final Caption caption}) = _$CaptionImpl;

  @override
  bool get isReady;
  @override
  RecognitionStatus get status;
  Caption get caption;
  @override
  @JsonKey(ignore: true)
  _$$CaptionImplCopyWith<_$CaptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
