// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_call_caption_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoCallCaptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) started,
    required TResult Function() toggleFeatureStarted,
    required TResult Function(List<Caption> captions, Failure? failure)
        updateRemoteCaptionStarted,
    required TResult Function(Caption? caption) localCaptionReceived,
    required TResult Function(Caption caption) uploadCaptionStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? started,
    TResult? Function()? toggleFeatureStarted,
    TResult? Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult? Function(Caption? caption)? localCaptionReceived,
    TResult? Function(Caption caption)? uploadCaptionStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? started,
    TResult Function()? toggleFeatureStarted,
    TResult Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult Function(Caption? caption)? localCaptionReceived,
    TResult Function(Caption caption)? uploadCaptionStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_UpdateRemoteCaptionStarted value)
        updateRemoteCaptionStarted,
    required TResult Function(_LocalCaptionReceived value) localCaptionReceived,
    required TResult Function(_UploadCaptionStarted value) uploadCaptionStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult? Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult? Function(_UploadCaptionStarted value)? uploadCaptionStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult Function(_UploadCaptionStarted value)? uploadCaptionStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallCaptionEventCopyWith<$Res> {
  factory $VideoCallCaptionEventCopyWith(VideoCallCaptionEvent value,
          $Res Function(VideoCallCaptionEvent) then) =
      _$VideoCallCaptionEventCopyWithImpl<$Res, VideoCallCaptionEvent>;
}

/// @nodoc
class _$VideoCallCaptionEventCopyWithImpl<$Res,
        $Val extends VideoCallCaptionEvent>
    implements $VideoCallCaptionEventCopyWith<$Res> {
  _$VideoCallCaptionEventCopyWithImpl(this._value, this._then);

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
  $Res call({Room room});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$StartedImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'VideoCallCaptionEvent.started(room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) started,
    required TResult Function() toggleFeatureStarted,
    required TResult Function(List<Caption> captions, Failure? failure)
        updateRemoteCaptionStarted,
    required TResult Function(Caption? caption) localCaptionReceived,
    required TResult Function(Caption caption) uploadCaptionStarted,
  }) {
    return started(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? started,
    TResult? Function()? toggleFeatureStarted,
    TResult? Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult? Function(Caption? caption)? localCaptionReceived,
    TResult? Function(Caption caption)? uploadCaptionStarted,
  }) {
    return started?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? started,
    TResult Function()? toggleFeatureStarted,
    TResult Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult Function(Caption? caption)? localCaptionReceived,
    TResult Function(Caption caption)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_UpdateRemoteCaptionStarted value)
        updateRemoteCaptionStarted,
    required TResult Function(_LocalCaptionReceived value) localCaptionReceived,
    required TResult Function(_UploadCaptionStarted value) uploadCaptionStarted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult? Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult? Function(_UploadCaptionStarted value)? uploadCaptionStarted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult Function(_UploadCaptionStarted value)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements VideoCallCaptionEvent {
  const factory _Started(final Room room) = _$StartedImpl;

  Room get room;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFeatureStartedImplCopyWith<$Res> {
  factory _$$ToggleFeatureStartedImplCopyWith(_$ToggleFeatureStartedImpl value,
          $Res Function(_$ToggleFeatureStartedImpl) then) =
      __$$ToggleFeatureStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleFeatureStartedImplCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res,
        _$ToggleFeatureStartedImpl>
    implements _$$ToggleFeatureStartedImplCopyWith<$Res> {
  __$$ToggleFeatureStartedImplCopyWithImpl(_$ToggleFeatureStartedImpl _value,
      $Res Function(_$ToggleFeatureStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleFeatureStartedImpl implements _ToggleFeatureStarted {
  const _$ToggleFeatureStartedImpl();

  @override
  String toString() {
    return 'VideoCallCaptionEvent.toggleFeatureStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFeatureStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) started,
    required TResult Function() toggleFeatureStarted,
    required TResult Function(List<Caption> captions, Failure? failure)
        updateRemoteCaptionStarted,
    required TResult Function(Caption? caption) localCaptionReceived,
    required TResult Function(Caption caption) uploadCaptionStarted,
  }) {
    return toggleFeatureStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? started,
    TResult? Function()? toggleFeatureStarted,
    TResult? Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult? Function(Caption? caption)? localCaptionReceived,
    TResult? Function(Caption caption)? uploadCaptionStarted,
  }) {
    return toggleFeatureStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? started,
    TResult Function()? toggleFeatureStarted,
    TResult Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult Function(Caption? caption)? localCaptionReceived,
    TResult Function(Caption caption)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (toggleFeatureStarted != null) {
      return toggleFeatureStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_UpdateRemoteCaptionStarted value)
        updateRemoteCaptionStarted,
    required TResult Function(_LocalCaptionReceived value) localCaptionReceived,
    required TResult Function(_UploadCaptionStarted value) uploadCaptionStarted,
  }) {
    return toggleFeatureStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult? Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult? Function(_UploadCaptionStarted value)? uploadCaptionStarted,
  }) {
    return toggleFeatureStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult Function(_UploadCaptionStarted value)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (toggleFeatureStarted != null) {
      return toggleFeatureStarted(this);
    }
    return orElse();
  }
}

abstract class _ToggleFeatureStarted implements VideoCallCaptionEvent {
  const factory _ToggleFeatureStarted() = _$ToggleFeatureStartedImpl;
}

/// @nodoc
abstract class _$$UpdateRemoteCaptionStartedImplCopyWith<$Res> {
  factory _$$UpdateRemoteCaptionStartedImplCopyWith(
          _$UpdateRemoteCaptionStartedImpl value,
          $Res Function(_$UpdateRemoteCaptionStartedImpl) then) =
      __$$UpdateRemoteCaptionStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Caption> captions, Failure? failure});
}

/// @nodoc
class __$$UpdateRemoteCaptionStartedImplCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res,
        _$UpdateRemoteCaptionStartedImpl>
    implements _$$UpdateRemoteCaptionStartedImplCopyWith<$Res> {
  __$$UpdateRemoteCaptionStartedImplCopyWithImpl(
      _$UpdateRemoteCaptionStartedImpl _value,
      $Res Function(_$UpdateRemoteCaptionStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? captions = null,
    Object? failure = freezed,
  }) {
    return _then(_$UpdateRemoteCaptionStartedImpl(
      captions: null == captions
          ? _value._captions
          : captions // ignore: cast_nullable_to_non_nullable
              as List<Caption>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$UpdateRemoteCaptionStartedImpl implements _UpdateRemoteCaptionStarted {
  const _$UpdateRemoteCaptionStartedImpl(
      {final List<Caption> captions = const [], this.failure})
      : _captions = captions;

  final List<Caption> _captions;
  @override
  @JsonKey()
  List<Caption> get captions {
    if (_captions is EqualUnmodifiableListView) return _captions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_captions);
  }

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'VideoCallCaptionEvent.updateRemoteCaptionStarted(captions: $captions, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRemoteCaptionStartedImpl &&
            const DeepCollectionEquality().equals(other._captions, _captions) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_captions), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRemoteCaptionStartedImplCopyWith<_$UpdateRemoteCaptionStartedImpl>
      get copyWith => __$$UpdateRemoteCaptionStartedImplCopyWithImpl<
          _$UpdateRemoteCaptionStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) started,
    required TResult Function() toggleFeatureStarted,
    required TResult Function(List<Caption> captions, Failure? failure)
        updateRemoteCaptionStarted,
    required TResult Function(Caption? caption) localCaptionReceived,
    required TResult Function(Caption caption) uploadCaptionStarted,
  }) {
    return updateRemoteCaptionStarted(captions, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? started,
    TResult? Function()? toggleFeatureStarted,
    TResult? Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult? Function(Caption? caption)? localCaptionReceived,
    TResult? Function(Caption caption)? uploadCaptionStarted,
  }) {
    return updateRemoteCaptionStarted?.call(captions, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? started,
    TResult Function()? toggleFeatureStarted,
    TResult Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult Function(Caption? caption)? localCaptionReceived,
    TResult Function(Caption caption)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (updateRemoteCaptionStarted != null) {
      return updateRemoteCaptionStarted(captions, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_UpdateRemoteCaptionStarted value)
        updateRemoteCaptionStarted,
    required TResult Function(_LocalCaptionReceived value) localCaptionReceived,
    required TResult Function(_UploadCaptionStarted value) uploadCaptionStarted,
  }) {
    return updateRemoteCaptionStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult? Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult? Function(_UploadCaptionStarted value)? uploadCaptionStarted,
  }) {
    return updateRemoteCaptionStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult Function(_UploadCaptionStarted value)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (updateRemoteCaptionStarted != null) {
      return updateRemoteCaptionStarted(this);
    }
    return orElse();
  }
}

abstract class _UpdateRemoteCaptionStarted implements VideoCallCaptionEvent {
  const factory _UpdateRemoteCaptionStarted(
      {final List<Caption> captions,
      final Failure? failure}) = _$UpdateRemoteCaptionStartedImpl;

  List<Caption> get captions;
  Failure? get failure;
  @JsonKey(ignore: true)
  _$$UpdateRemoteCaptionStartedImplCopyWith<_$UpdateRemoteCaptionStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalCaptionReceivedImplCopyWith<$Res> {
  factory _$$LocalCaptionReceivedImplCopyWith(_$LocalCaptionReceivedImpl value,
          $Res Function(_$LocalCaptionReceivedImpl) then) =
      __$$LocalCaptionReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Caption? caption});
}

/// @nodoc
class __$$LocalCaptionReceivedImplCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res,
        _$LocalCaptionReceivedImpl>
    implements _$$LocalCaptionReceivedImplCopyWith<$Res> {
  __$$LocalCaptionReceivedImplCopyWithImpl(_$LocalCaptionReceivedImpl _value,
      $Res Function(_$LocalCaptionReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caption = freezed,
  }) {
    return _then(_$LocalCaptionReceivedImpl(
      freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption?,
    ));
  }
}

/// @nodoc

class _$LocalCaptionReceivedImpl implements _LocalCaptionReceived {
  const _$LocalCaptionReceivedImpl([this.caption = null]);

  @override
  @JsonKey()
  final Caption? caption;

  @override
  String toString() {
    return 'VideoCallCaptionEvent.localCaptionReceived(caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalCaptionReceivedImpl &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalCaptionReceivedImplCopyWith<_$LocalCaptionReceivedImpl>
      get copyWith =>
          __$$LocalCaptionReceivedImplCopyWithImpl<_$LocalCaptionReceivedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) started,
    required TResult Function() toggleFeatureStarted,
    required TResult Function(List<Caption> captions, Failure? failure)
        updateRemoteCaptionStarted,
    required TResult Function(Caption? caption) localCaptionReceived,
    required TResult Function(Caption caption) uploadCaptionStarted,
  }) {
    return localCaptionReceived(caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? started,
    TResult? Function()? toggleFeatureStarted,
    TResult? Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult? Function(Caption? caption)? localCaptionReceived,
    TResult? Function(Caption caption)? uploadCaptionStarted,
  }) {
    return localCaptionReceived?.call(caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? started,
    TResult Function()? toggleFeatureStarted,
    TResult Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult Function(Caption? caption)? localCaptionReceived,
    TResult Function(Caption caption)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (localCaptionReceived != null) {
      return localCaptionReceived(caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_UpdateRemoteCaptionStarted value)
        updateRemoteCaptionStarted,
    required TResult Function(_LocalCaptionReceived value) localCaptionReceived,
    required TResult Function(_UploadCaptionStarted value) uploadCaptionStarted,
  }) {
    return localCaptionReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult? Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult? Function(_UploadCaptionStarted value)? uploadCaptionStarted,
  }) {
    return localCaptionReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult Function(_UploadCaptionStarted value)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (localCaptionReceived != null) {
      return localCaptionReceived(this);
    }
    return orElse();
  }
}

abstract class _LocalCaptionReceived implements VideoCallCaptionEvent {
  const factory _LocalCaptionReceived([final Caption? caption]) =
      _$LocalCaptionReceivedImpl;

  Caption? get caption;
  @JsonKey(ignore: true)
  _$$LocalCaptionReceivedImplCopyWith<_$LocalCaptionReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadCaptionStartedImplCopyWith<$Res> {
  factory _$$UploadCaptionStartedImplCopyWith(_$UploadCaptionStartedImpl value,
          $Res Function(_$UploadCaptionStartedImpl) then) =
      __$$UploadCaptionStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Caption caption});
}

/// @nodoc
class __$$UploadCaptionStartedImplCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res,
        _$UploadCaptionStartedImpl>
    implements _$$UploadCaptionStartedImplCopyWith<$Res> {
  __$$UploadCaptionStartedImplCopyWithImpl(_$UploadCaptionStartedImpl _value,
      $Res Function(_$UploadCaptionStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caption = null,
  }) {
    return _then(_$UploadCaptionStartedImpl(
      null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption,
    ));
  }
}

/// @nodoc

class _$UploadCaptionStartedImpl implements _UploadCaptionStarted {
  const _$UploadCaptionStartedImpl(this.caption);

  @override
  final Caption caption;

  @override
  String toString() {
    return 'VideoCallCaptionEvent.uploadCaptionStarted(caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadCaptionStartedImpl &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadCaptionStartedImplCopyWith<_$UploadCaptionStartedImpl>
      get copyWith =>
          __$$UploadCaptionStartedImplCopyWithImpl<_$UploadCaptionStartedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) started,
    required TResult Function() toggleFeatureStarted,
    required TResult Function(List<Caption> captions, Failure? failure)
        updateRemoteCaptionStarted,
    required TResult Function(Caption? caption) localCaptionReceived,
    required TResult Function(Caption caption) uploadCaptionStarted,
  }) {
    return uploadCaptionStarted(caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Room room)? started,
    TResult? Function()? toggleFeatureStarted,
    TResult? Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult? Function(Caption? caption)? localCaptionReceived,
    TResult? Function(Caption caption)? uploadCaptionStarted,
  }) {
    return uploadCaptionStarted?.call(caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? started,
    TResult Function()? toggleFeatureStarted,
    TResult Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult Function(Caption? caption)? localCaptionReceived,
    TResult Function(Caption caption)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (uploadCaptionStarted != null) {
      return uploadCaptionStarted(caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ToggleFeatureStarted value) toggleFeatureStarted,
    required TResult Function(_UpdateRemoteCaptionStarted value)
        updateRemoteCaptionStarted,
    required TResult Function(_LocalCaptionReceived value) localCaptionReceived,
    required TResult Function(_UploadCaptionStarted value) uploadCaptionStarted,
  }) {
    return uploadCaptionStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult? Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult? Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult? Function(_UploadCaptionStarted value)? uploadCaptionStarted,
  }) {
    return uploadCaptionStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ToggleFeatureStarted value)? toggleFeatureStarted,
    TResult Function(_UpdateRemoteCaptionStarted value)?
        updateRemoteCaptionStarted,
    TResult Function(_LocalCaptionReceived value)? localCaptionReceived,
    TResult Function(_UploadCaptionStarted value)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (uploadCaptionStarted != null) {
      return uploadCaptionStarted(this);
    }
    return orElse();
  }
}

abstract class _UploadCaptionStarted implements VideoCallCaptionEvent {
  const factory _UploadCaptionStarted(final Caption caption) =
      _$UploadCaptionStartedImpl;

  Caption get caption;
  @JsonKey(ignore: true)
  _$$UploadCaptionStartedImplCopyWith<_$UploadCaptionStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoCallCaptionState {
  bool get isEnabled => throw _privateConstructorUsedError;
  List<Caption> get localCaptions => throw _privateConstructorUsedError;
  String? get remoteCaptions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEnabled, List<Caption> localCaptions, String? remoteCaptions)
        initial,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        toggleFeatureFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        updateRemoteCaptionFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        uploadCaptionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ToggleFeatureFailure value) toggleFeatureFailure,
    required TResult Function(_UpdateRemoteCaptionFailure value)
        updateRemoteCaptionFailure,
    required TResult Function(_UploadCaptionFailure value) uploadCaptionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult? Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult? Function(_UploadCaptionFailure value)? uploadCaptionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult Function(_UploadCaptionFailure value)? uploadCaptionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoCallCaptionStateCopyWith<VideoCallCaptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallCaptionStateCopyWith<$Res> {
  factory $VideoCallCaptionStateCopyWith(VideoCallCaptionState value,
          $Res Function(VideoCallCaptionState) then) =
      _$VideoCallCaptionStateCopyWithImpl<$Res, VideoCallCaptionState>;
  @useResult
  $Res call(
      {bool isEnabled, List<Caption> localCaptions, String? remoteCaptions});
}

/// @nodoc
class _$VideoCallCaptionStateCopyWithImpl<$Res,
        $Val extends VideoCallCaptionState>
    implements $VideoCallCaptionStateCopyWith<$Res> {
  _$VideoCallCaptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? localCaptions = null,
    Object? remoteCaptions = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localCaptions: null == localCaptions
          ? _value.localCaptions
          : localCaptions // ignore: cast_nullable_to_non_nullable
              as List<Caption>,
      remoteCaptions: freezed == remoteCaptions
          ? _value.remoteCaptions
          : remoteCaptions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $VideoCallCaptionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEnabled, List<Caption> localCaptions, String? remoteCaptions});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VideoCallCaptionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? localCaptions = null,
    Object? remoteCaptions = freezed,
  }) {
    return _then(_$InitialImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localCaptions: null == localCaptions
          ? _value._localCaptions
          : localCaptions // ignore: cast_nullable_to_non_nullable
              as List<Caption>,
      remoteCaptions: freezed == remoteCaptions
          ? _value.remoteCaptions
          : remoteCaptions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isEnabled = false,
      final List<Caption> localCaptions = const [],
      this.remoteCaptions})
      : _localCaptions = localCaptions;

  @override
  @JsonKey()
  final bool isEnabled;
  final List<Caption> _localCaptions;
  @override
  @JsonKey()
  List<Caption> get localCaptions {
    if (_localCaptions is EqualUnmodifiableListView) return _localCaptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localCaptions);
  }

  @override
  final String? remoteCaptions;

  @override
  String toString() {
    return 'VideoCallCaptionState.initial(isEnabled: $isEnabled, localCaptions: $localCaptions, remoteCaptions: $remoteCaptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            const DeepCollectionEquality()
                .equals(other._localCaptions, _localCaptions) &&
            (identical(other.remoteCaptions, remoteCaptions) ||
                other.remoteCaptions == remoteCaptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled,
      const DeepCollectionEquality().hash(_localCaptions), remoteCaptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEnabled, List<Caption> localCaptions, String? remoteCaptions)
        initial,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        toggleFeatureFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        updateRemoteCaptionFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        uploadCaptionFailure,
  }) {
    return initial(isEnabled, localCaptions, remoteCaptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
  }) {
    return initial?.call(isEnabled, localCaptions, remoteCaptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isEnabled, localCaptions, remoteCaptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ToggleFeatureFailure value) toggleFeatureFailure,
    required TResult Function(_UpdateRemoteCaptionFailure value)
        updateRemoteCaptionFailure,
    required TResult Function(_UploadCaptionFailure value) uploadCaptionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult? Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult? Function(_UploadCaptionFailure value)? uploadCaptionFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult Function(_UploadCaptionFailure value)? uploadCaptionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoCallCaptionState {
  const factory _Initial(
      {final bool isEnabled,
      final List<Caption> localCaptions,
      final String? remoteCaptions}) = _$InitialImpl;

  @override
  bool get isEnabled;
  @override
  List<Caption> get localCaptions;
  @override
  String? get remoteCaptions;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFeatureFailureImplCopyWith<$Res>
    implements $VideoCallCaptionStateCopyWith<$Res> {
  factory _$$ToggleFeatureFailureImplCopyWith(_$ToggleFeatureFailureImpl value,
          $Res Function(_$ToggleFeatureFailureImpl) then) =
      __$$ToggleFeatureFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEnabled,
      List<Caption> localCaptions,
      String? remoteCaptions,
      Failure failure});
}

/// @nodoc
class __$$ToggleFeatureFailureImplCopyWithImpl<$Res>
    extends _$VideoCallCaptionStateCopyWithImpl<$Res,
        _$ToggleFeatureFailureImpl>
    implements _$$ToggleFeatureFailureImplCopyWith<$Res> {
  __$$ToggleFeatureFailureImplCopyWithImpl(_$ToggleFeatureFailureImpl _value,
      $Res Function(_$ToggleFeatureFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? localCaptions = null,
    Object? remoteCaptions = freezed,
    Object? failure = null,
  }) {
    return _then(_$ToggleFeatureFailureImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localCaptions: null == localCaptions
          ? _value._localCaptions
          : localCaptions // ignore: cast_nullable_to_non_nullable
              as List<Caption>,
      remoteCaptions: freezed == remoteCaptions
          ? _value.remoteCaptions
          : remoteCaptions // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ToggleFeatureFailureImpl implements _ToggleFeatureFailure {
  const _$ToggleFeatureFailureImpl(
      {required this.isEnabled,
      required final List<Caption> localCaptions,
      required this.remoteCaptions,
      required this.failure})
      : _localCaptions = localCaptions;

  @override
  final bool isEnabled;
  final List<Caption> _localCaptions;
  @override
  List<Caption> get localCaptions {
    if (_localCaptions is EqualUnmodifiableListView) return _localCaptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localCaptions);
  }

  @override
  final String? remoteCaptions;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'VideoCallCaptionState.toggleFeatureFailure(isEnabled: $isEnabled, localCaptions: $localCaptions, remoteCaptions: $remoteCaptions, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFeatureFailureImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            const DeepCollectionEquality()
                .equals(other._localCaptions, _localCaptions) &&
            (identical(other.remoteCaptions, remoteCaptions) ||
                other.remoteCaptions == remoteCaptions) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isEnabled,
      const DeepCollectionEquality().hash(_localCaptions),
      remoteCaptions,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFeatureFailureImplCopyWith<_$ToggleFeatureFailureImpl>
      get copyWith =>
          __$$ToggleFeatureFailureImplCopyWithImpl<_$ToggleFeatureFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEnabled, List<Caption> localCaptions, String? remoteCaptions)
        initial,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        toggleFeatureFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        updateRemoteCaptionFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        uploadCaptionFailure,
  }) {
    return toggleFeatureFailure(
        isEnabled, localCaptions, remoteCaptions, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
  }) {
    return toggleFeatureFailure?.call(
        isEnabled, localCaptions, remoteCaptions, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
    required TResult orElse(),
  }) {
    if (toggleFeatureFailure != null) {
      return toggleFeatureFailure(
          isEnabled, localCaptions, remoteCaptions, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ToggleFeatureFailure value) toggleFeatureFailure,
    required TResult Function(_UpdateRemoteCaptionFailure value)
        updateRemoteCaptionFailure,
    required TResult Function(_UploadCaptionFailure value) uploadCaptionFailure,
  }) {
    return toggleFeatureFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult? Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult? Function(_UploadCaptionFailure value)? uploadCaptionFailure,
  }) {
    return toggleFeatureFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult Function(_UploadCaptionFailure value)? uploadCaptionFailure,
    required TResult orElse(),
  }) {
    if (toggleFeatureFailure != null) {
      return toggleFeatureFailure(this);
    }
    return orElse();
  }
}

abstract class _ToggleFeatureFailure implements VideoCallCaptionState {
  const factory _ToggleFeatureFailure(
      {required final bool isEnabled,
      required final List<Caption> localCaptions,
      required final String? remoteCaptions,
      required final Failure failure}) = _$ToggleFeatureFailureImpl;

  @override
  bool get isEnabled;
  @override
  List<Caption> get localCaptions;
  @override
  String? get remoteCaptions;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$ToggleFeatureFailureImplCopyWith<_$ToggleFeatureFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRemoteCaptionFailureImplCopyWith<$Res>
    implements $VideoCallCaptionStateCopyWith<$Res> {
  factory _$$UpdateRemoteCaptionFailureImplCopyWith(
          _$UpdateRemoteCaptionFailureImpl value,
          $Res Function(_$UpdateRemoteCaptionFailureImpl) then) =
      __$$UpdateRemoteCaptionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEnabled,
      List<Caption> localCaptions,
      String? remoteCaptions,
      Failure failure});
}

/// @nodoc
class __$$UpdateRemoteCaptionFailureImplCopyWithImpl<$Res>
    extends _$VideoCallCaptionStateCopyWithImpl<$Res,
        _$UpdateRemoteCaptionFailureImpl>
    implements _$$UpdateRemoteCaptionFailureImplCopyWith<$Res> {
  __$$UpdateRemoteCaptionFailureImplCopyWithImpl(
      _$UpdateRemoteCaptionFailureImpl _value,
      $Res Function(_$UpdateRemoteCaptionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? localCaptions = null,
    Object? remoteCaptions = freezed,
    Object? failure = null,
  }) {
    return _then(_$UpdateRemoteCaptionFailureImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localCaptions: null == localCaptions
          ? _value._localCaptions
          : localCaptions // ignore: cast_nullable_to_non_nullable
              as List<Caption>,
      remoteCaptions: freezed == remoteCaptions
          ? _value.remoteCaptions
          : remoteCaptions // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$UpdateRemoteCaptionFailureImpl implements _UpdateRemoteCaptionFailure {
  const _$UpdateRemoteCaptionFailureImpl(
      {required this.isEnabled,
      required final List<Caption> localCaptions,
      required this.remoteCaptions,
      required this.failure})
      : _localCaptions = localCaptions;

  @override
  final bool isEnabled;
  final List<Caption> _localCaptions;
  @override
  List<Caption> get localCaptions {
    if (_localCaptions is EqualUnmodifiableListView) return _localCaptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localCaptions);
  }

  @override
  final String? remoteCaptions;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'VideoCallCaptionState.updateRemoteCaptionFailure(isEnabled: $isEnabled, localCaptions: $localCaptions, remoteCaptions: $remoteCaptions, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRemoteCaptionFailureImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            const DeepCollectionEquality()
                .equals(other._localCaptions, _localCaptions) &&
            (identical(other.remoteCaptions, remoteCaptions) ||
                other.remoteCaptions == remoteCaptions) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isEnabled,
      const DeepCollectionEquality().hash(_localCaptions),
      remoteCaptions,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRemoteCaptionFailureImplCopyWith<_$UpdateRemoteCaptionFailureImpl>
      get copyWith => __$$UpdateRemoteCaptionFailureImplCopyWithImpl<
          _$UpdateRemoteCaptionFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEnabled, List<Caption> localCaptions, String? remoteCaptions)
        initial,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        toggleFeatureFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        updateRemoteCaptionFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        uploadCaptionFailure,
  }) {
    return updateRemoteCaptionFailure(
        isEnabled, localCaptions, remoteCaptions, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
  }) {
    return updateRemoteCaptionFailure?.call(
        isEnabled, localCaptions, remoteCaptions, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
    required TResult orElse(),
  }) {
    if (updateRemoteCaptionFailure != null) {
      return updateRemoteCaptionFailure(
          isEnabled, localCaptions, remoteCaptions, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ToggleFeatureFailure value) toggleFeatureFailure,
    required TResult Function(_UpdateRemoteCaptionFailure value)
        updateRemoteCaptionFailure,
    required TResult Function(_UploadCaptionFailure value) uploadCaptionFailure,
  }) {
    return updateRemoteCaptionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult? Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult? Function(_UploadCaptionFailure value)? uploadCaptionFailure,
  }) {
    return updateRemoteCaptionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult Function(_UploadCaptionFailure value)? uploadCaptionFailure,
    required TResult orElse(),
  }) {
    if (updateRemoteCaptionFailure != null) {
      return updateRemoteCaptionFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateRemoteCaptionFailure implements VideoCallCaptionState {
  const factory _UpdateRemoteCaptionFailure(
      {required final bool isEnabled,
      required final List<Caption> localCaptions,
      required final String? remoteCaptions,
      required final Failure failure}) = _$UpdateRemoteCaptionFailureImpl;

  @override
  bool get isEnabled;
  @override
  List<Caption> get localCaptions;
  @override
  String? get remoteCaptions;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$UpdateRemoteCaptionFailureImplCopyWith<_$UpdateRemoteCaptionFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadCaptionFailureImplCopyWith<$Res>
    implements $VideoCallCaptionStateCopyWith<$Res> {
  factory _$$UploadCaptionFailureImplCopyWith(_$UploadCaptionFailureImpl value,
          $Res Function(_$UploadCaptionFailureImpl) then) =
      __$$UploadCaptionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEnabled,
      List<Caption> localCaptions,
      String? remoteCaptions,
      Failure failure});
}

/// @nodoc
class __$$UploadCaptionFailureImplCopyWithImpl<$Res>
    extends _$VideoCallCaptionStateCopyWithImpl<$Res,
        _$UploadCaptionFailureImpl>
    implements _$$UploadCaptionFailureImplCopyWith<$Res> {
  __$$UploadCaptionFailureImplCopyWithImpl(_$UploadCaptionFailureImpl _value,
      $Res Function(_$UploadCaptionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? localCaptions = null,
    Object? remoteCaptions = freezed,
    Object? failure = null,
  }) {
    return _then(_$UploadCaptionFailureImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localCaptions: null == localCaptions
          ? _value._localCaptions
          : localCaptions // ignore: cast_nullable_to_non_nullable
              as List<Caption>,
      remoteCaptions: freezed == remoteCaptions
          ? _value.remoteCaptions
          : remoteCaptions // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$UploadCaptionFailureImpl implements _UploadCaptionFailure {
  const _$UploadCaptionFailureImpl(
      {required this.isEnabled,
      required final List<Caption> localCaptions,
      required this.remoteCaptions,
      required this.failure})
      : _localCaptions = localCaptions;

  @override
  final bool isEnabled;
  final List<Caption> _localCaptions;
  @override
  List<Caption> get localCaptions {
    if (_localCaptions is EqualUnmodifiableListView) return _localCaptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localCaptions);
  }

  @override
  final String? remoteCaptions;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'VideoCallCaptionState.uploadCaptionFailure(isEnabled: $isEnabled, localCaptions: $localCaptions, remoteCaptions: $remoteCaptions, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadCaptionFailureImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            const DeepCollectionEquality()
                .equals(other._localCaptions, _localCaptions) &&
            (identical(other.remoteCaptions, remoteCaptions) ||
                other.remoteCaptions == remoteCaptions) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isEnabled,
      const DeepCollectionEquality().hash(_localCaptions),
      remoteCaptions,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadCaptionFailureImplCopyWith<_$UploadCaptionFailureImpl>
      get copyWith =>
          __$$UploadCaptionFailureImplCopyWithImpl<_$UploadCaptionFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEnabled, List<Caption> localCaptions, String? remoteCaptions)
        initial,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        toggleFeatureFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        updateRemoteCaptionFailure,
    required TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)
        uploadCaptionFailure,
  }) {
    return uploadCaptionFailure(
        isEnabled, localCaptions, remoteCaptions, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult? Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
  }) {
    return uploadCaptionFailure?.call(
        isEnabled, localCaptions, remoteCaptions, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions)?
        initial,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        toggleFeatureFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        updateRemoteCaptionFailure,
    TResult Function(bool isEnabled, List<Caption> localCaptions,
            String? remoteCaptions, Failure failure)?
        uploadCaptionFailure,
    required TResult orElse(),
  }) {
    if (uploadCaptionFailure != null) {
      return uploadCaptionFailure(
          isEnabled, localCaptions, remoteCaptions, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ToggleFeatureFailure value) toggleFeatureFailure,
    required TResult Function(_UpdateRemoteCaptionFailure value)
        updateRemoteCaptionFailure,
    required TResult Function(_UploadCaptionFailure value) uploadCaptionFailure,
  }) {
    return uploadCaptionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult? Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult? Function(_UploadCaptionFailure value)? uploadCaptionFailure,
  }) {
    return uploadCaptionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ToggleFeatureFailure value)? toggleFeatureFailure,
    TResult Function(_UpdateRemoteCaptionFailure value)?
        updateRemoteCaptionFailure,
    TResult Function(_UploadCaptionFailure value)? uploadCaptionFailure,
    required TResult orElse(),
  }) {
    if (uploadCaptionFailure != null) {
      return uploadCaptionFailure(this);
    }
    return orElse();
  }
}

abstract class _UploadCaptionFailure implements VideoCallCaptionState {
  const factory _UploadCaptionFailure(
      {required final bool isEnabled,
      required final List<Caption> localCaptions,
      required final String? remoteCaptions,
      required final Failure failure}) = _$UploadCaptionFailureImpl;

  @override
  bool get isEnabled;
  @override
  List<Caption> get localCaptions;
  @override
  String? get remoteCaptions;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$UploadCaptionFailureImplCopyWith<_$UploadCaptionFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
