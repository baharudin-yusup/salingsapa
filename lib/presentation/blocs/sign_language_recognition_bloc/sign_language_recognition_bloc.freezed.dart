// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_language_recognition_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignLanguageRecognitionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine) started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(PhotoSnapshot photoSnapshot)
        photoSnapshotReceived,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
    required TResult Function() resetDataStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RtcEngine engine)? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
    TResult? Function()? resetDataStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine)? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    TResult Function()? resetDataStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_PhotoSnapshotReceived value)
        photoSnapshotReceived,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
    required TResult Function(_ResetDataStarted value) resetDataStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
    TResult? Function(_ResetDataStarted value)? resetDataStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    TResult Function(_ResetDataStarted value)? resetDataStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignLanguageRecognitionEventCopyWith<$Res> {
  factory $SignLanguageRecognitionEventCopyWith(
          SignLanguageRecognitionEvent value,
          $Res Function(SignLanguageRecognitionEvent) then) =
      _$SignLanguageRecognitionEventCopyWithImpl<$Res,
          SignLanguageRecognitionEvent>;
}

/// @nodoc
class _$SignLanguageRecognitionEventCopyWithImpl<$Res,
        $Val extends SignLanguageRecognitionEvent>
    implements $SignLanguageRecognitionEventCopyWith<$Res> {
  _$SignLanguageRecognitionEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({RtcEngine engine});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engine = null,
  }) {
    return _then(_$StartedImpl(
      null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.engine);

  @override
  final RtcEngine engine;

  @override
  String toString() {
    return 'SignLanguageRecognitionEvent.started(engine: $engine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, engine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine) started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(PhotoSnapshot photoSnapshot)
        photoSnapshotReceived,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
    required TResult Function() resetDataStarted,
  }) {
    return started(engine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RtcEngine engine)? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
    TResult? Function()? resetDataStarted,
  }) {
    return started?.call(engine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine)? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    TResult Function()? resetDataStarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(engine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_PhotoSnapshotReceived value)
        photoSnapshotReceived,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
    required TResult Function(_ResetDataStarted value) resetDataStarted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
    TResult? Function(_ResetDataStarted value)? resetDataStarted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    TResult Function(_ResetDataStarted value)? resetDataStarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignLanguageRecognitionEvent {
  const factory _Started(final RtcEngine engine) = _$StartedImpl;

  RtcEngine get engine;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res,
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
    return 'SignLanguageRecognitionEvent.toggleFeatureStarted(isEnabled: $isEnabled)';
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
    required TResult Function(RtcEngine engine) started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(PhotoSnapshot photoSnapshot)
        photoSnapshotReceived,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
    required TResult Function() resetDataStarted,
  }) {
    return toggleFeatureStarted(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RtcEngine engine)? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
    TResult? Function()? resetDataStarted,
  }) {
    return toggleFeatureStarted?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine)? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    TResult Function()? resetDataStarted,
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
    required TResult Function(_PhotoSnapshotReceived value)
        photoSnapshotReceived,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
    required TResult Function(_ResetDataStarted value) resetDataStarted,
  }) {
    return toggleFeatureStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
    TResult? Function(_ResetDataStarted value)? resetDataStarted,
  }) {
    return toggleFeatureStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    TResult Function(_ResetDataStarted value)? resetDataStarted,
    required TResult orElse(),
  }) {
    if (toggleFeatureStarted != null) {
      return toggleFeatureStarted(this);
    }
    return orElse();
  }
}

abstract class _ToggleFeatureStarted implements SignLanguageRecognitionEvent {
  const factory _ToggleFeatureStarted([final bool isEnabled]) =
      _$ToggleFeatureStartedImpl;

  bool get isEnabled;
  @JsonKey(ignore: true)
  _$$ToggleFeatureStartedImplCopyWith<_$ToggleFeatureStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoSnapshotReceivedImplCopyWith<$Res> {
  factory _$$PhotoSnapshotReceivedImplCopyWith(
          _$PhotoSnapshotReceivedImpl value,
          $Res Function(_$PhotoSnapshotReceivedImpl) then) =
      __$$PhotoSnapshotReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PhotoSnapshot photoSnapshot});
}

/// @nodoc
class __$$PhotoSnapshotReceivedImplCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res,
        _$PhotoSnapshotReceivedImpl>
    implements _$$PhotoSnapshotReceivedImplCopyWith<$Res> {
  __$$PhotoSnapshotReceivedImplCopyWithImpl(_$PhotoSnapshotReceivedImpl _value,
      $Res Function(_$PhotoSnapshotReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoSnapshot = null,
  }) {
    return _then(_$PhotoSnapshotReceivedImpl(
      null == photoSnapshot
          ? _value.photoSnapshot
          : photoSnapshot // ignore: cast_nullable_to_non_nullable
              as PhotoSnapshot,
    ));
  }
}

/// @nodoc

class _$PhotoSnapshotReceivedImpl implements _PhotoSnapshotReceived {
  const _$PhotoSnapshotReceivedImpl(this.photoSnapshot);

  @override
  final PhotoSnapshot photoSnapshot;

  @override
  String toString() {
    return 'SignLanguageRecognitionEvent.photoSnapshotReceived(photoSnapshot: $photoSnapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoSnapshotReceivedImpl &&
            (identical(other.photoSnapshot, photoSnapshot) ||
                other.photoSnapshot == photoSnapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoSnapshot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoSnapshotReceivedImplCopyWith<_$PhotoSnapshotReceivedImpl>
      get copyWith => __$$PhotoSnapshotReceivedImplCopyWithImpl<
          _$PhotoSnapshotReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine) started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(PhotoSnapshot photoSnapshot)
        photoSnapshotReceived,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
    required TResult Function() resetDataStarted,
  }) {
    return photoSnapshotReceived(photoSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RtcEngine engine)? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
    TResult? Function()? resetDataStarted,
  }) {
    return photoSnapshotReceived?.call(photoSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine)? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    TResult Function()? resetDataStarted,
    required TResult orElse(),
  }) {
    if (photoSnapshotReceived != null) {
      return photoSnapshotReceived(photoSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_PhotoSnapshotReceived value)
        photoSnapshotReceived,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
    required TResult Function(_ResetDataStarted value) resetDataStarted,
  }) {
    return photoSnapshotReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
    TResult? Function(_ResetDataStarted value)? resetDataStarted,
  }) {
    return photoSnapshotReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    TResult Function(_ResetDataStarted value)? resetDataStarted,
    required TResult orElse(),
  }) {
    if (photoSnapshotReceived != null) {
      return photoSnapshotReceived(this);
    }
    return orElse();
  }
}

abstract class _PhotoSnapshotReceived implements SignLanguageRecognitionEvent {
  const factory _PhotoSnapshotReceived(final PhotoSnapshot photoSnapshot) =
      _$PhotoSnapshotReceivedImpl;

  PhotoSnapshot get photoSnapshot;
  @JsonKey(ignore: true)
  _$$PhotoSnapshotReceivedImplCopyWith<_$PhotoSnapshotReceivedImpl>
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
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res,
        _$StatusChangedImpl> implements _$$StatusChangedImplCopyWith<$Res> {
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
    return 'SignLanguageRecognitionEvent.statusChanged(status: $status)';
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
    required TResult Function(RtcEngine engine) started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(PhotoSnapshot photoSnapshot)
        photoSnapshotReceived,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
    required TResult Function() resetDataStarted,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RtcEngine engine)? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
    TResult? Function()? resetDataStarted,
  }) {
    return statusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine)? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    TResult Function()? resetDataStarted,
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
    required TResult Function(_PhotoSnapshotReceived value)
        photoSnapshotReceived,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
    required TResult Function(_ResetDataStarted value) resetDataStarted,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
    TResult? Function(_ResetDataStarted value)? resetDataStarted,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    TResult Function(_ResetDataStarted value)? resetDataStarted,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class _StatusChanged implements SignLanguageRecognitionEvent {
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
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res,
        _$CaptionReceivedImpl> implements _$$CaptionReceivedImplCopyWith<$Res> {
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
    return 'SignLanguageRecognitionEvent.captionReceived(caption: $caption)';
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
    required TResult Function(RtcEngine engine) started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(PhotoSnapshot photoSnapshot)
        photoSnapshotReceived,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
    required TResult Function() resetDataStarted,
  }) {
    return captionReceived(caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RtcEngine engine)? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
    TResult? Function()? resetDataStarted,
  }) {
    return captionReceived?.call(caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine)? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    TResult Function()? resetDataStarted,
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
    required TResult Function(_PhotoSnapshotReceived value)
        photoSnapshotReceived,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
    required TResult Function(_ResetDataStarted value) resetDataStarted,
  }) {
    return captionReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
    TResult? Function(_ResetDataStarted value)? resetDataStarted,
  }) {
    return captionReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    TResult Function(_ResetDataStarted value)? resetDataStarted,
    required TResult orElse(),
  }) {
    if (captionReceived != null) {
      return captionReceived(this);
    }
    return orElse();
  }
}

abstract class _CaptionReceived implements SignLanguageRecognitionEvent {
  const factory _CaptionReceived(final Caption caption) = _$CaptionReceivedImpl;

  Caption get caption;
  @JsonKey(ignore: true)
  _$$CaptionReceivedImplCopyWith<_$CaptionReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetDataStartedImplCopyWith<$Res> {
  factory _$$ResetDataStartedImplCopyWith(_$ResetDataStartedImpl value,
          $Res Function(_$ResetDataStartedImpl) then) =
      __$$ResetDataStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetDataStartedImplCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res,
        _$ResetDataStartedImpl>
    implements _$$ResetDataStartedImplCopyWith<$Res> {
  __$$ResetDataStartedImplCopyWithImpl(_$ResetDataStartedImpl _value,
      $Res Function(_$ResetDataStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetDataStartedImpl implements _ResetDataStarted {
  const _$ResetDataStartedImpl();

  @override
  String toString() {
    return 'SignLanguageRecognitionEvent.resetDataStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetDataStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RtcEngine engine) started,
    required TResult Function(bool isEnabled) toggleFeatureStarted,
    required TResult Function(PhotoSnapshot photoSnapshot)
        photoSnapshotReceived,
    required TResult Function(RecognitionStatus status) statusChanged,
    required TResult Function(Caption caption) captionReceived,
    required TResult Function() resetDataStarted,
  }) {
    return resetDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RtcEngine engine)? started,
    TResult? Function(bool isEnabled)? toggleFeatureStarted,
    TResult? Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult? Function(RecognitionStatus status)? statusChanged,
    TResult? Function(Caption caption)? captionReceived,
    TResult? Function()? resetDataStarted,
  }) {
    return resetDataStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RtcEngine engine)? started,
    TResult Function(bool isEnabled)? toggleFeatureStarted,
    TResult Function(PhotoSnapshot photoSnapshot)? photoSnapshotReceived,
    TResult Function(RecognitionStatus status)? statusChanged,
    TResult Function(Caption caption)? captionReceived,
    TResult Function()? resetDataStarted,
    required TResult orElse(),
  }) {
    if (resetDataStarted != null) {
      return resetDataStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_PhotoSnapshotReceived value)
        photoSnapshotReceived,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_CaptionReceived value) captionReceived,
    required TResult Function(_ResetDataStarted value) resetDataStarted,
  }) {
    return resetDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_CaptionReceived value)? captionReceived,
    TResult? Function(_ResetDataStarted value)? resetDataStarted,
  }) {
    return resetDataStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_PhotoSnapshotReceived value)? photoSnapshotReceived,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_CaptionReceived value)? captionReceived,
    TResult Function(_ResetDataStarted value)? resetDataStarted,
    required TResult orElse(),
  }) {
    if (resetDataStarted != null) {
      return resetDataStarted(this);
    }
    return orElse();
  }
}

abstract class _ResetDataStarted implements SignLanguageRecognitionEvent {
  const factory _ResetDataStarted() = _$ResetDataStartedImpl;
}

/// @nodoc
mixin _$SignLanguageRecognitionState {
  bool get isReady => throw _privateConstructorUsedError;
  RecognitionStatus get status => throw _privateConstructorUsedError;
  Caption? get caption => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption? caption)
        initial,
    required TResult Function(bool isReady, RecognitionStatus status,
            Caption? caption, Failure failure)
        failure,
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption caption)
        updateCaptionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isReady, RecognitionStatus status, Caption? caption)?
        initial,
    TResult? Function(bool isReady, RecognitionStatus status, Caption? caption,
            Failure failure)?
        failure,
    TResult? Function(bool isReady, RecognitionStatus status, Caption caption)?
        updateCaptionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isReady, RecognitionStatus status, Caption? caption)?
        initial,
    TResult Function(bool isReady, RecognitionStatus status, Caption? caption,
            Failure failure)?
        failure,
    TResult Function(bool isReady, RecognitionStatus status, Caption caption)?
        updateCaptionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateCaptionSuccess value) updateCaptionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateCaptionSuccess value)? updateCaptionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateCaptionSuccess value)? updateCaptionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignLanguageRecognitionStateCopyWith<SignLanguageRecognitionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignLanguageRecognitionStateCopyWith<$Res> {
  factory $SignLanguageRecognitionStateCopyWith(
          SignLanguageRecognitionState value,
          $Res Function(SignLanguageRecognitionState) then) =
      _$SignLanguageRecognitionStateCopyWithImpl<$Res,
          SignLanguageRecognitionState>;
  @useResult
  $Res call({bool isReady, RecognitionStatus status, Caption caption});
}

/// @nodoc
class _$SignLanguageRecognitionStateCopyWithImpl<$Res,
        $Val extends SignLanguageRecognitionState>
    implements $SignLanguageRecognitionStateCopyWith<$Res> {
  _$SignLanguageRecognitionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
    Object? caption = null,
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
      caption: null == caption
          ? _value.caption!
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SignLanguageRecognitionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReady, RecognitionStatus status, Caption? caption});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
    Object? caption = freezed,
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
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isReady = false,
      this.status = RecognitionStatus.off,
      this.caption = null});

  @override
  @JsonKey()
  final bool isReady;
  @override
  @JsonKey()
  final RecognitionStatus status;
  @override
  @JsonKey()
  final Caption? caption;

  @override
  String toString() {
    return 'SignLanguageRecognitionState.initial(isReady: $isReady, status: $status, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReady, status, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption? caption)
        initial,
    required TResult Function(bool isReady, RecognitionStatus status,
            Caption? caption, Failure failure)
        failure,
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption caption)
        updateCaptionSuccess,
  }) {
    return initial(isReady, status, caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isReady, RecognitionStatus status, Caption? caption)?
        initial,
    TResult? Function(bool isReady, RecognitionStatus status, Caption? caption,
            Failure failure)?
        failure,
    TResult? Function(bool isReady, RecognitionStatus status, Caption caption)?
        updateCaptionSuccess,
  }) {
    return initial?.call(isReady, status, caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isReady, RecognitionStatus status, Caption? caption)?
        initial,
    TResult Function(bool isReady, RecognitionStatus status, Caption? caption,
            Failure failure)?
        failure,
    TResult Function(bool isReady, RecognitionStatus status, Caption caption)?
        updateCaptionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isReady, status, caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateCaptionSuccess value) updateCaptionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateCaptionSuccess value)? updateCaptionSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateCaptionSuccess value)? updateCaptionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignLanguageRecognitionState {
  const factory _Initial(
      {final bool isReady,
      final RecognitionStatus status,
      final Caption? caption}) = _$InitialImpl;

  @override
  bool get isReady;
  @override
  RecognitionStatus get status;
  @override
  Caption? get caption;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $SignLanguageRecognitionStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isReady,
      RecognitionStatus status,
      Caption? caption,
      Failure failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
    Object? caption = freezed,
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
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption?,
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
      {required this.isReady,
      required this.status,
      required this.caption,
      required this.failure});

  @override
  final bool isReady;
  @override
  final RecognitionStatus status;
  @override
  final Caption? caption;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'SignLanguageRecognitionState.failure(isReady: $isReady, status: $status, caption: $caption, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isReady, status, caption, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption? caption)
        initial,
    required TResult Function(bool isReady, RecognitionStatus status,
            Caption? caption, Failure failure)
        failure,
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption caption)
        updateCaptionSuccess,
  }) {
    return failure(isReady, status, caption, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isReady, RecognitionStatus status, Caption? caption)?
        initial,
    TResult? Function(bool isReady, RecognitionStatus status, Caption? caption,
            Failure failure)?
        failure,
    TResult? Function(bool isReady, RecognitionStatus status, Caption caption)?
        updateCaptionSuccess,
  }) {
    return failure?.call(isReady, status, caption, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isReady, RecognitionStatus status, Caption? caption)?
        initial,
    TResult Function(bool isReady, RecognitionStatus status, Caption? caption,
            Failure failure)?
        failure,
    TResult Function(bool isReady, RecognitionStatus status, Caption caption)?
        updateCaptionSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(isReady, status, caption, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateCaptionSuccess value) updateCaptionSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateCaptionSuccess value)? updateCaptionSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateCaptionSuccess value)? updateCaptionSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SignLanguageRecognitionState {
  const factory _Failure(
      {required final bool isReady,
      required final RecognitionStatus status,
      required final Caption? caption,
      required final Failure failure}) = _$FailureImpl;

  @override
  bool get isReady;
  @override
  RecognitionStatus get status;
  @override
  Caption? get caption;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCaptionSuccessImplCopyWith<$Res>
    implements $SignLanguageRecognitionStateCopyWith<$Res> {
  factory _$$UpdateCaptionSuccessImplCopyWith(_$UpdateCaptionSuccessImpl value,
          $Res Function(_$UpdateCaptionSuccessImpl) then) =
      __$$UpdateCaptionSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReady, RecognitionStatus status, Caption caption});
}

/// @nodoc
class __$$UpdateCaptionSuccessImplCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionStateCopyWithImpl<$Res,
        _$UpdateCaptionSuccessImpl>
    implements _$$UpdateCaptionSuccessImplCopyWith<$Res> {
  __$$UpdateCaptionSuccessImplCopyWithImpl(_$UpdateCaptionSuccessImpl _value,
      $Res Function(_$UpdateCaptionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
    Object? caption = null,
  }) {
    return _then(_$UpdateCaptionSuccessImpl(
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

class _$UpdateCaptionSuccessImpl implements _UpdateCaptionSuccess {
  const _$UpdateCaptionSuccessImpl(
      {this.isReady = false,
      this.status = RecognitionStatus.off,
      required this.caption});

  @override
  @JsonKey()
  final bool isReady;
  @override
  @JsonKey()
  final RecognitionStatus status;
  @override
  final Caption caption;

  @override
  String toString() {
    return 'SignLanguageRecognitionState.updateCaptionSuccess(isReady: $isReady, status: $status, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCaptionSuccessImpl &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReady, status, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCaptionSuccessImplCopyWith<_$UpdateCaptionSuccessImpl>
      get copyWith =>
          __$$UpdateCaptionSuccessImplCopyWithImpl<_$UpdateCaptionSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption? caption)
        initial,
    required TResult Function(bool isReady, RecognitionStatus status,
            Caption? caption, Failure failure)
        failure,
    required TResult Function(
            bool isReady, RecognitionStatus status, Caption caption)
        updateCaptionSuccess,
  }) {
    return updateCaptionSuccess(isReady, status, caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isReady, RecognitionStatus status, Caption? caption)?
        initial,
    TResult? Function(bool isReady, RecognitionStatus status, Caption? caption,
            Failure failure)?
        failure,
    TResult? Function(bool isReady, RecognitionStatus status, Caption caption)?
        updateCaptionSuccess,
  }) {
    return updateCaptionSuccess?.call(isReady, status, caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isReady, RecognitionStatus status, Caption? caption)?
        initial,
    TResult Function(bool isReady, RecognitionStatus status, Caption? caption,
            Failure failure)?
        failure,
    TResult Function(bool isReady, RecognitionStatus status, Caption caption)?
        updateCaptionSuccess,
    required TResult orElse(),
  }) {
    if (updateCaptionSuccess != null) {
      return updateCaptionSuccess(isReady, status, caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UpdateCaptionSuccess value) updateCaptionSuccess,
  }) {
    return updateCaptionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UpdateCaptionSuccess value)? updateCaptionSuccess,
  }) {
    return updateCaptionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_UpdateCaptionSuccess value)? updateCaptionSuccess,
    required TResult orElse(),
  }) {
    if (updateCaptionSuccess != null) {
      return updateCaptionSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateCaptionSuccess implements SignLanguageRecognitionState {
  const factory _UpdateCaptionSuccess(
      {final bool isReady,
      final RecognitionStatus status,
      required final Caption caption}) = _$UpdateCaptionSuccessImpl;

  @override
  bool get isReady;
  @override
  RecognitionStatus get status;
  @override
  Caption get caption;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCaptionSuccessImplCopyWith<_$UpdateCaptionSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
