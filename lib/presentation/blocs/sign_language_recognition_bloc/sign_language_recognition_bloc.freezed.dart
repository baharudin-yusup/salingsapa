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
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({RtcEngine engine});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engine = null,
  }) {
    return _then(_$_Started(
      null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.engine);

  @override
  final RtcEngine engine;

  @override
  String toString() {
    return 'SignLanguageRecognitionEvent.started(engine: $engine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, engine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

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
  const factory _Started(final RtcEngine engine) = _$_Started;

  RtcEngine get engine;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleFeatureStartedCopyWith<$Res> {
  factory _$$_ToggleFeatureStartedCopyWith(_$_ToggleFeatureStarted value,
          $Res Function(_$_ToggleFeatureStarted) then) =
      __$$_ToggleFeatureStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class __$$_ToggleFeatureStartedCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res,
        _$_ToggleFeatureStarted>
    implements _$$_ToggleFeatureStartedCopyWith<$Res> {
  __$$_ToggleFeatureStartedCopyWithImpl(_$_ToggleFeatureStarted _value,
      $Res Function(_$_ToggleFeatureStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
  }) {
    return _then(_$_ToggleFeatureStarted(
      null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ToggleFeatureStarted implements _ToggleFeatureStarted {
  const _$_ToggleFeatureStarted([this.isEnabled = false]);

  @override
  @JsonKey()
  final bool isEnabled;

  @override
  String toString() {
    return 'SignLanguageRecognitionEvent.toggleFeatureStarted(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleFeatureStarted &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleFeatureStartedCopyWith<_$_ToggleFeatureStarted> get copyWith =>
      __$$_ToggleFeatureStartedCopyWithImpl<_$_ToggleFeatureStarted>(
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
      _$_ToggleFeatureStarted;

  bool get isEnabled;
  @JsonKey(ignore: true)
  _$$_ToggleFeatureStartedCopyWith<_$_ToggleFeatureStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhotoSnapshotReceivedCopyWith<$Res> {
  factory _$$_PhotoSnapshotReceivedCopyWith(_$_PhotoSnapshotReceived value,
          $Res Function(_$_PhotoSnapshotReceived) then) =
      __$$_PhotoSnapshotReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({PhotoSnapshot photoSnapshot});
}

/// @nodoc
class __$$_PhotoSnapshotReceivedCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res,
        _$_PhotoSnapshotReceived>
    implements _$$_PhotoSnapshotReceivedCopyWith<$Res> {
  __$$_PhotoSnapshotReceivedCopyWithImpl(_$_PhotoSnapshotReceived _value,
      $Res Function(_$_PhotoSnapshotReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoSnapshot = null,
  }) {
    return _then(_$_PhotoSnapshotReceived(
      null == photoSnapshot
          ? _value.photoSnapshot
          : photoSnapshot // ignore: cast_nullable_to_non_nullable
              as PhotoSnapshot,
    ));
  }
}

/// @nodoc

class _$_PhotoSnapshotReceived implements _PhotoSnapshotReceived {
  const _$_PhotoSnapshotReceived(this.photoSnapshot);

  @override
  final PhotoSnapshot photoSnapshot;

  @override
  String toString() {
    return 'SignLanguageRecognitionEvent.photoSnapshotReceived(photoSnapshot: $photoSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoSnapshotReceived &&
            (identical(other.photoSnapshot, photoSnapshot) ||
                other.photoSnapshot == photoSnapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoSnapshot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoSnapshotReceivedCopyWith<_$_PhotoSnapshotReceived> get copyWith =>
      __$$_PhotoSnapshotReceivedCopyWithImpl<_$_PhotoSnapshotReceived>(
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
      _$_PhotoSnapshotReceived;

  PhotoSnapshot get photoSnapshot;
  @JsonKey(ignore: true)
  _$$_PhotoSnapshotReceivedCopyWith<_$_PhotoSnapshotReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StatusChangedCopyWith<$Res> {
  factory _$$_StatusChangedCopyWith(
          _$_StatusChanged value, $Res Function(_$_StatusChanged) then) =
      __$$_StatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({RecognitionStatus status});
}

/// @nodoc
class __$$_StatusChangedCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res, _$_StatusChanged>
    implements _$$_StatusChangedCopyWith<$Res> {
  __$$_StatusChangedCopyWithImpl(
      _$_StatusChanged _value, $Res Function(_$_StatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_StatusChanged(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecognitionStatus,
    ));
  }
}

/// @nodoc

class _$_StatusChanged implements _StatusChanged {
  const _$_StatusChanged(this.status);

  @override
  final RecognitionStatus status;

  @override
  String toString() {
    return 'SignLanguageRecognitionEvent.statusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusChanged &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusChangedCopyWith<_$_StatusChanged> get copyWith =>
      __$$_StatusChangedCopyWithImpl<_$_StatusChanged>(this, _$identity);

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
      _$_StatusChanged;

  RecognitionStatus get status;
  @JsonKey(ignore: true)
  _$$_StatusChangedCopyWith<_$_StatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CaptionReceivedCopyWith<$Res> {
  factory _$$_CaptionReceivedCopyWith(
          _$_CaptionReceived value, $Res Function(_$_CaptionReceived) then) =
      __$$_CaptionReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Caption caption});
}

/// @nodoc
class __$$_CaptionReceivedCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res, _$_CaptionReceived>
    implements _$$_CaptionReceivedCopyWith<$Res> {
  __$$_CaptionReceivedCopyWithImpl(
      _$_CaptionReceived _value, $Res Function(_$_CaptionReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caption = null,
  }) {
    return _then(_$_CaptionReceived(
      null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption,
    ));
  }
}

/// @nodoc

class _$_CaptionReceived implements _CaptionReceived {
  const _$_CaptionReceived(this.caption);

  @override
  final Caption caption;

  @override
  String toString() {
    return 'SignLanguageRecognitionEvent.captionReceived(caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaptionReceived &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaptionReceivedCopyWith<_$_CaptionReceived> get copyWith =>
      __$$_CaptionReceivedCopyWithImpl<_$_CaptionReceived>(this, _$identity);

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
  const factory _CaptionReceived(final Caption caption) = _$_CaptionReceived;

  Caption get caption;
  @JsonKey(ignore: true)
  _$$_CaptionReceivedCopyWith<_$_CaptionReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetDataStartedCopyWith<$Res> {
  factory _$$_ResetDataStartedCopyWith(
          _$_ResetDataStarted value, $Res Function(_$_ResetDataStarted) then) =
      __$$_ResetDataStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetDataStartedCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionEventCopyWithImpl<$Res,
        _$_ResetDataStarted> implements _$$_ResetDataStartedCopyWith<$Res> {
  __$$_ResetDataStartedCopyWithImpl(
      _$_ResetDataStarted _value, $Res Function(_$_ResetDataStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetDataStarted implements _ResetDataStarted {
  const _$_ResetDataStarted();

  @override
  String toString() {
    return 'SignLanguageRecognitionEvent.resetDataStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetDataStarted);
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
  const factory _ResetDataStarted() = _$_ResetDataStarted;
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
abstract class _$$_InitialCopyWith<$Res>
    implements $SignLanguageRecognitionStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReady, RecognitionStatus status, Caption? caption});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
    Object? caption = freezed,
  }) {
    return _then(_$_Initial(
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

class _$_Initial implements _Initial {
  const _$_Initial(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReady, status, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

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
      final Caption? caption}) = _$_Initial;

  @override
  bool get isReady;
  @override
  RecognitionStatus get status;
  @override
  Caption? get caption;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $SignLanguageRecognitionStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isReady,
      RecognitionStatus status,
      Caption? caption,
      Failure failure});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
    Object? caption = freezed,
    Object? failure = null,
  }) {
    return _then(_$_Failure(
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

class _$_Failure implements _Failure {
  const _$_Failure(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
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
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

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
      required final Failure failure}) = _$_Failure;

  @override
  bool get isReady;
  @override
  RecognitionStatus get status;
  @override
  Caption? get caption;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCaptionSuccessCopyWith<$Res>
    implements $SignLanguageRecognitionStateCopyWith<$Res> {
  factory _$$_UpdateCaptionSuccessCopyWith(_$_UpdateCaptionSuccess value,
          $Res Function(_$_UpdateCaptionSuccess) then) =
      __$$_UpdateCaptionSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReady, RecognitionStatus status, Caption caption});
}

/// @nodoc
class __$$_UpdateCaptionSuccessCopyWithImpl<$Res>
    extends _$SignLanguageRecognitionStateCopyWithImpl<$Res,
        _$_UpdateCaptionSuccess>
    implements _$$_UpdateCaptionSuccessCopyWith<$Res> {
  __$$_UpdateCaptionSuccessCopyWithImpl(_$_UpdateCaptionSuccess _value,
      $Res Function(_$_UpdateCaptionSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReady = null,
    Object? status = null,
    Object? caption = null,
  }) {
    return _then(_$_UpdateCaptionSuccess(
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

class _$_UpdateCaptionSuccess implements _UpdateCaptionSuccess {
  const _$_UpdateCaptionSuccess(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCaptionSuccess &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReady, status, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCaptionSuccessCopyWith<_$_UpdateCaptionSuccess> get copyWith =>
      __$$_UpdateCaptionSuccessCopyWithImpl<_$_UpdateCaptionSuccess>(
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
      required final Caption caption}) = _$_UpdateCaptionSuccess;

  @override
  bool get isReady;
  @override
  RecognitionStatus get status;
  @override
  Caption get caption;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCaptionSuccessCopyWith<_$_UpdateCaptionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
