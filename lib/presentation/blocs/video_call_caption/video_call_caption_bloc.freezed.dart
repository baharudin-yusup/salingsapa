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
    required TResult Function(String invitationId) started,
    required TResult Function() toggleFeatureStarted,
    required TResult Function(List<Caption> captions, Failure? failure)
        updateRemoteCaptionStarted,
    required TResult Function(Caption? caption) localCaptionReceived,
    required TResult Function(Caption caption) uploadCaptionStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invitationId)? started,
    TResult? Function()? toggleFeatureStarted,
    TResult? Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult? Function(Caption? caption)? localCaptionReceived,
    TResult? Function(Caption caption)? uploadCaptionStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invitationId)? started,
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
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String invitationId});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitationId = null,
  }) {
    return _then(_$_Started(
      invitationId: null == invitationId
          ? _value.invitationId
          : invitationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.invitationId});

  @override
  final String invitationId;

  @override
  String toString() {
    return 'VideoCallCaptionEvent.started(invitationId: $invitationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.invitationId, invitationId) ||
                other.invitationId == invitationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invitationId) started,
    required TResult Function() toggleFeatureStarted,
    required TResult Function(List<Caption> captions, Failure? failure)
        updateRemoteCaptionStarted,
    required TResult Function(Caption? caption) localCaptionReceived,
    required TResult Function(Caption caption) uploadCaptionStarted,
  }) {
    return started(invitationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invitationId)? started,
    TResult? Function()? toggleFeatureStarted,
    TResult? Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult? Function(Caption? caption)? localCaptionReceived,
    TResult? Function(Caption caption)? uploadCaptionStarted,
  }) {
    return started?.call(invitationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invitationId)? started,
    TResult Function()? toggleFeatureStarted,
    TResult Function(List<Caption> captions, Failure? failure)?
        updateRemoteCaptionStarted,
    TResult Function(Caption? caption)? localCaptionReceived,
    TResult Function(Caption caption)? uploadCaptionStarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(invitationId);
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
  const factory _Started({required final String invitationId}) = _$_Started;

  String get invitationId;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleFeatureStartedCopyWith<$Res> {
  factory _$$_ToggleFeatureStartedCopyWith(_$_ToggleFeatureStarted value,
          $Res Function(_$_ToggleFeatureStarted) then) =
      __$$_ToggleFeatureStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleFeatureStartedCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res, _$_ToggleFeatureStarted>
    implements _$$_ToggleFeatureStartedCopyWith<$Res> {
  __$$_ToggleFeatureStartedCopyWithImpl(_$_ToggleFeatureStarted _value,
      $Res Function(_$_ToggleFeatureStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleFeatureStarted implements _ToggleFeatureStarted {
  const _$_ToggleFeatureStarted();

  @override
  String toString() {
    return 'VideoCallCaptionEvent.toggleFeatureStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleFeatureStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invitationId) started,
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
    TResult? Function(String invitationId)? started,
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
    TResult Function(String invitationId)? started,
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
  const factory _ToggleFeatureStarted() = _$_ToggleFeatureStarted;
}

/// @nodoc
abstract class _$$_UpdateRemoteCaptionStartedCopyWith<$Res> {
  factory _$$_UpdateRemoteCaptionStartedCopyWith(
          _$_UpdateRemoteCaptionStarted value,
          $Res Function(_$_UpdateRemoteCaptionStarted) then) =
      __$$_UpdateRemoteCaptionStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Caption> captions, Failure? failure});
}

/// @nodoc
class __$$_UpdateRemoteCaptionStartedCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res,
        _$_UpdateRemoteCaptionStarted>
    implements _$$_UpdateRemoteCaptionStartedCopyWith<$Res> {
  __$$_UpdateRemoteCaptionStartedCopyWithImpl(
      _$_UpdateRemoteCaptionStarted _value,
      $Res Function(_$_UpdateRemoteCaptionStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? captions = null,
    Object? failure = freezed,
  }) {
    return _then(_$_UpdateRemoteCaptionStarted(
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

class _$_UpdateRemoteCaptionStarted implements _UpdateRemoteCaptionStarted {
  const _$_UpdateRemoteCaptionStarted(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateRemoteCaptionStarted &&
            const DeepCollectionEquality().equals(other._captions, _captions) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_captions), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateRemoteCaptionStartedCopyWith<_$_UpdateRemoteCaptionStarted>
      get copyWith => __$$_UpdateRemoteCaptionStartedCopyWithImpl<
          _$_UpdateRemoteCaptionStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invitationId) started,
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
    TResult? Function(String invitationId)? started,
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
    TResult Function(String invitationId)? started,
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
      final Failure? failure}) = _$_UpdateRemoteCaptionStarted;

  List<Caption> get captions;
  Failure? get failure;
  @JsonKey(ignore: true)
  _$$_UpdateRemoteCaptionStartedCopyWith<_$_UpdateRemoteCaptionStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalCaptionReceivedCopyWith<$Res> {
  factory _$$_LocalCaptionReceivedCopyWith(_$_LocalCaptionReceived value,
          $Res Function(_$_LocalCaptionReceived) then) =
      __$$_LocalCaptionReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Caption? caption});
}

/// @nodoc
class __$$_LocalCaptionReceivedCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res, _$_LocalCaptionReceived>
    implements _$$_LocalCaptionReceivedCopyWith<$Res> {
  __$$_LocalCaptionReceivedCopyWithImpl(_$_LocalCaptionReceived _value,
      $Res Function(_$_LocalCaptionReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caption = freezed,
  }) {
    return _then(_$_LocalCaptionReceived(
      freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption?,
    ));
  }
}

/// @nodoc

class _$_LocalCaptionReceived implements _LocalCaptionReceived {
  const _$_LocalCaptionReceived([this.caption = null]);

  @override
  @JsonKey()
  final Caption? caption;

  @override
  String toString() {
    return 'VideoCallCaptionEvent.localCaptionReceived(caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalCaptionReceived &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalCaptionReceivedCopyWith<_$_LocalCaptionReceived> get copyWith =>
      __$$_LocalCaptionReceivedCopyWithImpl<_$_LocalCaptionReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invitationId) started,
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
    TResult? Function(String invitationId)? started,
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
    TResult Function(String invitationId)? started,
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
      _$_LocalCaptionReceived;

  Caption? get caption;
  @JsonKey(ignore: true)
  _$$_LocalCaptionReceivedCopyWith<_$_LocalCaptionReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadCaptionStartedCopyWith<$Res> {
  factory _$$_UploadCaptionStartedCopyWith(_$_UploadCaptionStarted value,
          $Res Function(_$_UploadCaptionStarted) then) =
      __$$_UploadCaptionStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({Caption caption});
}

/// @nodoc
class __$$_UploadCaptionStartedCopyWithImpl<$Res>
    extends _$VideoCallCaptionEventCopyWithImpl<$Res, _$_UploadCaptionStarted>
    implements _$$_UploadCaptionStartedCopyWith<$Res> {
  __$$_UploadCaptionStartedCopyWithImpl(_$_UploadCaptionStarted _value,
      $Res Function(_$_UploadCaptionStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caption = null,
  }) {
    return _then(_$_UploadCaptionStarted(
      null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption,
    ));
  }
}

/// @nodoc

class _$_UploadCaptionStarted implements _UploadCaptionStarted {
  const _$_UploadCaptionStarted(this.caption);

  @override
  final Caption caption;

  @override
  String toString() {
    return 'VideoCallCaptionEvent.uploadCaptionStarted(caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadCaptionStarted &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadCaptionStartedCopyWith<_$_UploadCaptionStarted> get copyWith =>
      __$$_UploadCaptionStartedCopyWithImpl<_$_UploadCaptionStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invitationId) started,
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
    TResult? Function(String invitationId)? started,
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
    TResult Function(String invitationId)? started,
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
      _$_UploadCaptionStarted;

  Caption get caption;
  @JsonKey(ignore: true)
  _$$_UploadCaptionStartedCopyWith<_$_UploadCaptionStarted> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_InitialCopyWith<$Res>
    implements $VideoCallCaptionStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEnabled, List<Caption> localCaptions, String? remoteCaptions});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$VideoCallCaptionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? localCaptions = null,
    Object? remoteCaptions = freezed,
  }) {
    return _then(_$_Initial(
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

class _$_Initial implements _Initial {
  const _$_Initial(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
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
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

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
      final String? remoteCaptions}) = _$_Initial;

  @override
  bool get isEnabled;
  @override
  List<Caption> get localCaptions;
  @override
  String? get remoteCaptions;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleFeatureFailureCopyWith<$Res>
    implements $VideoCallCaptionStateCopyWith<$Res> {
  factory _$$_ToggleFeatureFailureCopyWith(_$_ToggleFeatureFailure value,
          $Res Function(_$_ToggleFeatureFailure) then) =
      __$$_ToggleFeatureFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEnabled,
      List<Caption> localCaptions,
      String? remoteCaptions,
      Failure failure});
}

/// @nodoc
class __$$_ToggleFeatureFailureCopyWithImpl<$Res>
    extends _$VideoCallCaptionStateCopyWithImpl<$Res, _$_ToggleFeatureFailure>
    implements _$$_ToggleFeatureFailureCopyWith<$Res> {
  __$$_ToggleFeatureFailureCopyWithImpl(_$_ToggleFeatureFailure _value,
      $Res Function(_$_ToggleFeatureFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? localCaptions = null,
    Object? remoteCaptions = freezed,
    Object? failure = null,
  }) {
    return _then(_$_ToggleFeatureFailure(
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

class _$_ToggleFeatureFailure implements _ToggleFeatureFailure {
  const _$_ToggleFeatureFailure(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleFeatureFailure &&
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
  _$$_ToggleFeatureFailureCopyWith<_$_ToggleFeatureFailure> get copyWith =>
      __$$_ToggleFeatureFailureCopyWithImpl<_$_ToggleFeatureFailure>(
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
      required final Failure failure}) = _$_ToggleFeatureFailure;

  @override
  bool get isEnabled;
  @override
  List<Caption> get localCaptions;
  @override
  String? get remoteCaptions;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ToggleFeatureFailureCopyWith<_$_ToggleFeatureFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateRemoteCaptionFailureCopyWith<$Res>
    implements $VideoCallCaptionStateCopyWith<$Res> {
  factory _$$_UpdateRemoteCaptionFailureCopyWith(
          _$_UpdateRemoteCaptionFailure value,
          $Res Function(_$_UpdateRemoteCaptionFailure) then) =
      __$$_UpdateRemoteCaptionFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEnabled,
      List<Caption> localCaptions,
      String? remoteCaptions,
      Failure failure});
}

/// @nodoc
class __$$_UpdateRemoteCaptionFailureCopyWithImpl<$Res>
    extends _$VideoCallCaptionStateCopyWithImpl<$Res,
        _$_UpdateRemoteCaptionFailure>
    implements _$$_UpdateRemoteCaptionFailureCopyWith<$Res> {
  __$$_UpdateRemoteCaptionFailureCopyWithImpl(
      _$_UpdateRemoteCaptionFailure _value,
      $Res Function(_$_UpdateRemoteCaptionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? localCaptions = null,
    Object? remoteCaptions = freezed,
    Object? failure = null,
  }) {
    return _then(_$_UpdateRemoteCaptionFailure(
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

class _$_UpdateRemoteCaptionFailure implements _UpdateRemoteCaptionFailure {
  const _$_UpdateRemoteCaptionFailure(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateRemoteCaptionFailure &&
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
  _$$_UpdateRemoteCaptionFailureCopyWith<_$_UpdateRemoteCaptionFailure>
      get copyWith => __$$_UpdateRemoteCaptionFailureCopyWithImpl<
          _$_UpdateRemoteCaptionFailure>(this, _$identity);

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
      required final Failure failure}) = _$_UpdateRemoteCaptionFailure;

  @override
  bool get isEnabled;
  @override
  List<Caption> get localCaptions;
  @override
  String? get remoteCaptions;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateRemoteCaptionFailureCopyWith<_$_UpdateRemoteCaptionFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadCaptionFailureCopyWith<$Res>
    implements $VideoCallCaptionStateCopyWith<$Res> {
  factory _$$_UploadCaptionFailureCopyWith(_$_UploadCaptionFailure value,
          $Res Function(_$_UploadCaptionFailure) then) =
      __$$_UploadCaptionFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEnabled,
      List<Caption> localCaptions,
      String? remoteCaptions,
      Failure failure});
}

/// @nodoc
class __$$_UploadCaptionFailureCopyWithImpl<$Res>
    extends _$VideoCallCaptionStateCopyWithImpl<$Res, _$_UploadCaptionFailure>
    implements _$$_UploadCaptionFailureCopyWith<$Res> {
  __$$_UploadCaptionFailureCopyWithImpl(_$_UploadCaptionFailure _value,
      $Res Function(_$_UploadCaptionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? localCaptions = null,
    Object? remoteCaptions = freezed,
    Object? failure = null,
  }) {
    return _then(_$_UploadCaptionFailure(
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

class _$_UploadCaptionFailure implements _UploadCaptionFailure {
  const _$_UploadCaptionFailure(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadCaptionFailure &&
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
  _$$_UploadCaptionFailureCopyWith<_$_UploadCaptionFailure> get copyWith =>
      __$$_UploadCaptionFailureCopyWithImpl<_$_UploadCaptionFailure>(
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
      required final Failure failure}) = _$_UploadCaptionFailure;

  @override
  bool get isEnabled;
  @override
  List<Caption> get localCaptions;
  @override
  String? get remoteCaptions;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_UploadCaptionFailureCopyWith<_$_UploadCaptionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
