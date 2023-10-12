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
    required TResult Function(Contact contact) videoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        setInvitationStarted,
    required TResult Function(VideoCallInvitation invitation)
        joinVideoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        leaveVideoCallStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateRemoteUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? videoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult? Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult? Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? videoCallStarted,
    TResult Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoCallStarted value) videoCallStarted,
    required TResult Function(_SetInvitationStarted value) setInvitationStarted,
    required TResult Function(_JoinVideoCallStarted value) joinVideoCallStarted,
    required TResult Function(_LeaveVideoCallStarted value)
        leaveVideoCallStarted,
    required TResult Function(_UpdateRemoteUserStarted value)
        updateRemoteUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoCallStarted value)? videoCallStarted,
    TResult? Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult? Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult? Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult? Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoCallStarted value)? videoCallStarted,
    TResult Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
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
abstract class _$$_VideoCallStartedCopyWith<$Res> {
  factory _$$_VideoCallStartedCopyWith(
          _$_VideoCallStarted value, $Res Function(_$_VideoCallStarted) then) =
      __$$_VideoCallStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$_VideoCallStartedCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$_VideoCallStarted>
    implements _$$_VideoCallStartedCopyWith<$Res> {
  __$$_VideoCallStartedCopyWithImpl(
      _$_VideoCallStarted _value, $Res Function(_$_VideoCallStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$_VideoCallStarted(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$_VideoCallStarted implements _VideoCallStarted {
  const _$_VideoCallStarted(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'VideoCallEvent.videoCallStarted(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoCallStarted &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoCallStartedCopyWith<_$_VideoCallStarted> get copyWith =>
      __$$_VideoCallStartedCopyWithImpl<_$_VideoCallStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) videoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        setInvitationStarted,
    required TResult Function(VideoCallInvitation invitation)
        joinVideoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        leaveVideoCallStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateRemoteUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return videoCallStarted(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? videoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult? Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult? Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
  }) {
    return videoCallStarted?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? videoCallStarted,
    TResult Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (videoCallStarted != null) {
      return videoCallStarted(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoCallStarted value) videoCallStarted,
    required TResult Function(_SetInvitationStarted value) setInvitationStarted,
    required TResult Function(_JoinVideoCallStarted value) joinVideoCallStarted,
    required TResult Function(_LeaveVideoCallStarted value)
        leaveVideoCallStarted,
    required TResult Function(_UpdateRemoteUserStarted value)
        updateRemoteUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return videoCallStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoCallStarted value)? videoCallStarted,
    TResult? Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult? Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult? Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult? Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return videoCallStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoCallStarted value)? videoCallStarted,
    TResult Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (videoCallStarted != null) {
      return videoCallStarted(this);
    }
    return orElse();
  }
}

abstract class _VideoCallStarted implements VideoCallEvent {
  const factory _VideoCallStarted(final Contact contact) = _$_VideoCallStarted;

  Contact get contact;
  @JsonKey(ignore: true)
  _$$_VideoCallStartedCopyWith<_$_VideoCallStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetInvitationStartedCopyWith<$Res> {
  factory _$$_SetInvitationStartedCopyWith(_$_SetInvitationStarted value,
          $Res Function(_$_SetInvitationStarted) then) =
      __$$_SetInvitationStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoCallInvitation invitation});
}

/// @nodoc
class __$$_SetInvitationStartedCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$_SetInvitationStarted>
    implements _$$_SetInvitationStartedCopyWith<$Res> {
  __$$_SetInvitationStartedCopyWithImpl(_$_SetInvitationStarted _value,
      $Res Function(_$_SetInvitationStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = null,
  }) {
    return _then(_$_SetInvitationStarted(
      null == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation,
    ));
  }
}

/// @nodoc

class _$_SetInvitationStarted implements _SetInvitationStarted {
  const _$_SetInvitationStarted(this.invitation);

  @override
  final VideoCallInvitation invitation;

  @override
  String toString() {
    return 'VideoCallEvent.setInvitationStarted(invitation: $invitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetInvitationStarted &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetInvitationStartedCopyWith<_$_SetInvitationStarted> get copyWith =>
      __$$_SetInvitationStartedCopyWithImpl<_$_SetInvitationStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) videoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        setInvitationStarted,
    required TResult Function(VideoCallInvitation invitation)
        joinVideoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        leaveVideoCallStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateRemoteUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return setInvitationStarted(invitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? videoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult? Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult? Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
  }) {
    return setInvitationStarted?.call(invitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? videoCallStarted,
    TResult Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (setInvitationStarted != null) {
      return setInvitationStarted(invitation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoCallStarted value) videoCallStarted,
    required TResult Function(_SetInvitationStarted value) setInvitationStarted,
    required TResult Function(_JoinVideoCallStarted value) joinVideoCallStarted,
    required TResult Function(_LeaveVideoCallStarted value)
        leaveVideoCallStarted,
    required TResult Function(_UpdateRemoteUserStarted value)
        updateRemoteUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return setInvitationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoCallStarted value)? videoCallStarted,
    TResult? Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult? Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult? Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult? Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return setInvitationStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoCallStarted value)? videoCallStarted,
    TResult Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (setInvitationStarted != null) {
      return setInvitationStarted(this);
    }
    return orElse();
  }
}

abstract class _SetInvitationStarted implements VideoCallEvent {
  const factory _SetInvitationStarted(final VideoCallInvitation invitation) =
      _$_SetInvitationStarted;

  VideoCallInvitation get invitation;
  @JsonKey(ignore: true)
  _$$_SetInvitationStartedCopyWith<_$_SetInvitationStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JoinVideoCallStartedCopyWith<$Res> {
  factory _$$_JoinVideoCallStartedCopyWith(_$_JoinVideoCallStarted value,
          $Res Function(_$_JoinVideoCallStarted) then) =
      __$$_JoinVideoCallStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoCallInvitation invitation});
}

/// @nodoc
class __$$_JoinVideoCallStartedCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$_JoinVideoCallStarted>
    implements _$$_JoinVideoCallStartedCopyWith<$Res> {
  __$$_JoinVideoCallStartedCopyWithImpl(_$_JoinVideoCallStarted _value,
      $Res Function(_$_JoinVideoCallStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = null,
  }) {
    return _then(_$_JoinVideoCallStarted(
      null == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation,
    ));
  }
}

/// @nodoc

class _$_JoinVideoCallStarted implements _JoinVideoCallStarted {
  const _$_JoinVideoCallStarted(this.invitation);

  @override
  final VideoCallInvitation invitation;

  @override
  String toString() {
    return 'VideoCallEvent.joinVideoCallStarted(invitation: $invitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinVideoCallStarted &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinVideoCallStartedCopyWith<_$_JoinVideoCallStarted> get copyWith =>
      __$$_JoinVideoCallStartedCopyWithImpl<_$_JoinVideoCallStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) videoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        setInvitationStarted,
    required TResult Function(VideoCallInvitation invitation)
        joinVideoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        leaveVideoCallStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateRemoteUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return joinVideoCallStarted(invitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? videoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult? Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult? Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
  }) {
    return joinVideoCallStarted?.call(invitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? videoCallStarted,
    TResult Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (joinVideoCallStarted != null) {
      return joinVideoCallStarted(invitation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoCallStarted value) videoCallStarted,
    required TResult Function(_SetInvitationStarted value) setInvitationStarted,
    required TResult Function(_JoinVideoCallStarted value) joinVideoCallStarted,
    required TResult Function(_LeaveVideoCallStarted value)
        leaveVideoCallStarted,
    required TResult Function(_UpdateRemoteUserStarted value)
        updateRemoteUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return joinVideoCallStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoCallStarted value)? videoCallStarted,
    TResult? Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult? Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult? Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult? Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return joinVideoCallStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoCallStarted value)? videoCallStarted,
    TResult Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (joinVideoCallStarted != null) {
      return joinVideoCallStarted(this);
    }
    return orElse();
  }
}

abstract class _JoinVideoCallStarted implements VideoCallEvent {
  const factory _JoinVideoCallStarted(final VideoCallInvitation invitation) =
      _$_JoinVideoCallStarted;

  VideoCallInvitation get invitation;
  @JsonKey(ignore: true)
  _$$_JoinVideoCallStartedCopyWith<_$_JoinVideoCallStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LeaveVideoCallStartedCopyWith<$Res> {
  factory _$$_LeaveVideoCallStartedCopyWith(_$_LeaveVideoCallStarted value,
          $Res Function(_$_LeaveVideoCallStarted) then) =
      __$$_LeaveVideoCallStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoCallInvitation invitation});
}

/// @nodoc
class __$$_LeaveVideoCallStartedCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$_LeaveVideoCallStarted>
    implements _$$_LeaveVideoCallStartedCopyWith<$Res> {
  __$$_LeaveVideoCallStartedCopyWithImpl(_$_LeaveVideoCallStarted _value,
      $Res Function(_$_LeaveVideoCallStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = null,
  }) {
    return _then(_$_LeaveVideoCallStarted(
      null == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation,
    ));
  }
}

/// @nodoc

class _$_LeaveVideoCallStarted implements _LeaveVideoCallStarted {
  const _$_LeaveVideoCallStarted(this.invitation);

  @override
  final VideoCallInvitation invitation;

  @override
  String toString() {
    return 'VideoCallEvent.leaveVideoCallStarted(invitation: $invitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveVideoCallStarted &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaveVideoCallStartedCopyWith<_$_LeaveVideoCallStarted> get copyWith =>
      __$$_LeaveVideoCallStartedCopyWithImpl<_$_LeaveVideoCallStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) videoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        setInvitationStarted,
    required TResult Function(VideoCallInvitation invitation)
        joinVideoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        leaveVideoCallStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateRemoteUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return leaveVideoCallStarted(invitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? videoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult? Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult? Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
  }) {
    return leaveVideoCallStarted?.call(invitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? videoCallStarted,
    TResult Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (leaveVideoCallStarted != null) {
      return leaveVideoCallStarted(invitation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoCallStarted value) videoCallStarted,
    required TResult Function(_SetInvitationStarted value) setInvitationStarted,
    required TResult Function(_JoinVideoCallStarted value) joinVideoCallStarted,
    required TResult Function(_LeaveVideoCallStarted value)
        leaveVideoCallStarted,
    required TResult Function(_UpdateRemoteUserStarted value)
        updateRemoteUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return leaveVideoCallStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoCallStarted value)? videoCallStarted,
    TResult? Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult? Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult? Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult? Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return leaveVideoCallStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoCallStarted value)? videoCallStarted,
    TResult Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (leaveVideoCallStarted != null) {
      return leaveVideoCallStarted(this);
    }
    return orElse();
  }
}

abstract class _LeaveVideoCallStarted implements VideoCallEvent {
  const factory _LeaveVideoCallStarted(final VideoCallInvitation invitation) =
      _$_LeaveVideoCallStarted;

  VideoCallInvitation get invitation;
  @JsonKey(ignore: true)
  _$$_LeaveVideoCallStartedCopyWith<_$_LeaveVideoCallStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateRemoteUserStartedCopyWith<$Res> {
  factory _$$_UpdateRemoteUserStartedCopyWith(_$_UpdateRemoteUserStarted value,
          $Res Function(_$_UpdateRemoteUserStarted) then) =
      __$$_UpdateRemoteUserStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoCallUserUpdateInfo info});
}

/// @nodoc
class __$$_UpdateRemoteUserStartedCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res, _$_UpdateRemoteUserStarted>
    implements _$$_UpdateRemoteUserStartedCopyWith<$Res> {
  __$$_UpdateRemoteUserStartedCopyWithImpl(_$_UpdateRemoteUserStarted _value,
      $Res Function(_$_UpdateRemoteUserStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$_UpdateRemoteUserStarted(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as VideoCallUserUpdateInfo,
    ));
  }
}

/// @nodoc

class _$_UpdateRemoteUserStarted implements _UpdateRemoteUserStarted {
  const _$_UpdateRemoteUserStarted(this.info);

  @override
  final VideoCallUserUpdateInfo info;

  @override
  String toString() {
    return 'VideoCallEvent.updateRemoteUserStatusStarted(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateRemoteUserStarted &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateRemoteUserStartedCopyWith<_$_UpdateRemoteUserStarted>
      get copyWith =>
          __$$_UpdateRemoteUserStartedCopyWithImpl<_$_UpdateRemoteUserStarted>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) videoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        setInvitationStarted,
    required TResult Function(VideoCallInvitation invitation)
        joinVideoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        leaveVideoCallStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateRemoteUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return updateRemoteUserStatusStarted(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? videoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult? Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult? Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
  }) {
    return updateRemoteUserStatusStarted?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? videoCallStarted,
    TResult Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (updateRemoteUserStatusStarted != null) {
      return updateRemoteUserStatusStarted(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoCallStarted value) videoCallStarted,
    required TResult Function(_SetInvitationStarted value) setInvitationStarted,
    required TResult Function(_JoinVideoCallStarted value) joinVideoCallStarted,
    required TResult Function(_LeaveVideoCallStarted value)
        leaveVideoCallStarted,
    required TResult Function(_UpdateRemoteUserStarted value)
        updateRemoteUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return updateRemoteUserStatusStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoCallStarted value)? videoCallStarted,
    TResult? Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult? Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult? Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult? Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return updateRemoteUserStatusStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoCallStarted value)? videoCallStarted,
    TResult Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
    required TResult orElse(),
  }) {
    if (updateRemoteUserStatusStarted != null) {
      return updateRemoteUserStatusStarted(this);
    }
    return orElse();
  }
}

abstract class _UpdateRemoteUserStarted implements VideoCallEvent {
  const factory _UpdateRemoteUserStarted(final VideoCallUserUpdateInfo info) =
      _$_UpdateRemoteUserStarted;

  VideoCallUserUpdateInfo get info;
  @JsonKey(ignore: true)
  _$$_UpdateRemoteUserStartedCopyWith<_$_UpdateRemoteUserStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TakePhotoSnapshotFeatureStatusChangedCopyWith<$Res> {
  factory _$$_TakePhotoSnapshotFeatureStatusChangedCopyWith(
          _$_TakePhotoSnapshotFeatureStatusChanged value,
          $Res Function(_$_TakePhotoSnapshotFeatureStatusChanged) then) =
      __$$_TakePhotoSnapshotFeatureStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class __$$_TakePhotoSnapshotFeatureStatusChangedCopyWithImpl<$Res>
    extends _$VideoCallEventCopyWithImpl<$Res,
        _$_TakePhotoSnapshotFeatureStatusChanged>
    implements _$$_TakePhotoSnapshotFeatureStatusChangedCopyWith<$Res> {
  __$$_TakePhotoSnapshotFeatureStatusChangedCopyWithImpl(
      _$_TakePhotoSnapshotFeatureStatusChanged _value,
      $Res Function(_$_TakePhotoSnapshotFeatureStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
  }) {
    return _then(_$_TakePhotoSnapshotFeatureStatusChanged(
      null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TakePhotoSnapshotFeatureStatusChanged
    implements _TakePhotoSnapshotFeatureStatusChanged {
  const _$_TakePhotoSnapshotFeatureStatusChanged(this.isEnabled);

  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'VideoCallEvent.takePhotoSnapshotFeatureStatusChanged(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TakePhotoSnapshotFeatureStatusChanged &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TakePhotoSnapshotFeatureStatusChangedCopyWith<
          _$_TakePhotoSnapshotFeatureStatusChanged>
      get copyWith => __$$_TakePhotoSnapshotFeatureStatusChangedCopyWithImpl<
          _$_TakePhotoSnapshotFeatureStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) videoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        setInvitationStarted,
    required TResult Function(VideoCallInvitation invitation)
        joinVideoCallStarted,
    required TResult Function(VideoCallInvitation invitation)
        leaveVideoCallStarted,
    required TResult Function(VideoCallUserUpdateInfo info)
        updateRemoteUserStatusStarted,
    required TResult Function(bool isEnabled)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return takePhotoSnapshotFeatureStatusChanged(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? videoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult? Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult? Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult? Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult? Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
  }) {
    return takePhotoSnapshotFeatureStatusChanged?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? videoCallStarted,
    TResult Function(VideoCallInvitation invitation)? setInvitationStarted,
    TResult Function(VideoCallInvitation invitation)? joinVideoCallStarted,
    TResult Function(VideoCallInvitation invitation)? leaveVideoCallStarted,
    TResult Function(VideoCallUserUpdateInfo info)?
        updateRemoteUserStatusStarted,
    TResult Function(bool isEnabled)? takePhotoSnapshotFeatureStatusChanged,
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
    required TResult Function(_VideoCallStarted value) videoCallStarted,
    required TResult Function(_SetInvitationStarted value) setInvitationStarted,
    required TResult Function(_JoinVideoCallStarted value) joinVideoCallStarted,
    required TResult Function(_LeaveVideoCallStarted value)
        leaveVideoCallStarted,
    required TResult Function(_UpdateRemoteUserStarted value)
        updateRemoteUserStatusStarted,
    required TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return takePhotoSnapshotFeatureStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoCallStarted value)? videoCallStarted,
    TResult? Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult? Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult? Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult? Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult? Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
  }) {
    return takePhotoSnapshotFeatureStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoCallStarted value)? videoCallStarted,
    TResult Function(_SetInvitationStarted value)? setInvitationStarted,
    TResult Function(_JoinVideoCallStarted value)? joinVideoCallStarted,
    TResult Function(_LeaveVideoCallStarted value)? leaveVideoCallStarted,
    TResult Function(_UpdateRemoteUserStarted value)?
        updateRemoteUserStatusStarted,
    TResult Function(_TakePhotoSnapshotFeatureStatusChanged value)?
        takePhotoSnapshotFeatureStatusChanged,
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
      _$_TakePhotoSnapshotFeatureStatusChanged;

  bool get isEnabled;
  @JsonKey(ignore: true)
  _$$_TakePhotoSnapshotFeatureStatusChangedCopyWith<
          _$_TakePhotoSnapshotFeatureStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoCallState {
  VideoCallInvitation? get invitation => throw _privateConstructorUsedError;
  bool get isRemoteUserJoined => throw _privateConstructorUsedError;
  bool get isTakePhotoEnabled => throw _privateConstructorUsedError;
  int get localUid => throw _privateConstructorUsedError;
  int get remoteUid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_JoinChannelInProgress value)
        joinChannelInProgress,
    required TResult Function(_JoinChannelSuccess value) joinChannelSuccess,
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
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
  $Res call(
      {VideoCallInvitation invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      int localUid,
      int remoteUid});
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
    Object? invitation = null,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_value.copyWith(
      invitation: null == invitation
          ? _value.invitation!
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation? invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      int localUid,
      int remoteUid});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = freezed,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_Initial(
      invitation: freezed == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation?,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.invitation = null,
      this.isRemoteUserJoined = false,
      this.isTakePhotoEnabled = false,
      this.localUid = -1,
      this.remoteUid = -1});

  @override
  @JsonKey()
  final VideoCallInvitation? invitation;
  @override
  @JsonKey()
  final bool isRemoteUserJoined;
  @override
  @JsonKey()
  final bool isTakePhotoEnabled;
  @override
  @JsonKey()
  final int localUid;
  @override
  @JsonKey()
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.initial(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return initial(invitation, isRemoteUserJoined, isTakePhotoEnabled, localUid,
        remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return initial?.call(invitation, isRemoteUserJoined, isTakePhotoEnabled,
        localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(invitation, isRemoteUserJoined, isTakePhotoEnabled,
          localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoCallState {
  const factory _Initial(
      {final VideoCallInvitation? invitation,
      final bool isRemoteUserJoined,
      final bool isTakePhotoEnabled,
      final int localUid,
      final int remoteUid}) = _$_Initial;

  @override
  VideoCallInvitation? get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JoinChannelInProgressCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_JoinChannelInProgressCopyWith(_$_JoinChannelInProgress value,
          $Res Function(_$_JoinChannelInProgress) then) =
      __$$_JoinChannelInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation? invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      int localUid,
      int remoteUid});
}

/// @nodoc
class __$$_JoinChannelInProgressCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_JoinChannelInProgress>
    implements _$$_JoinChannelInProgressCopyWith<$Res> {
  __$$_JoinChannelInProgressCopyWithImpl(_$_JoinChannelInProgress _value,
      $Res Function(_$_JoinChannelInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = freezed,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_JoinChannelInProgress(
      invitation: freezed == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation?,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_JoinChannelInProgress implements _JoinChannelInProgress {
  const _$_JoinChannelInProgress(
      {required this.invitation,
      required this.isRemoteUserJoined,
      required this.isTakePhotoEnabled,
      required this.localUid,
      required this.remoteUid});

  @override
  final VideoCallInvitation? invitation;
  @override
  final bool isRemoteUserJoined;
  @override
  final bool isTakePhotoEnabled;
  @override
  final int localUid;
  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.joinChannelInProgress(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinChannelInProgress &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinChannelInProgressCopyWith<_$_JoinChannelInProgress> get copyWith =>
      __$$_JoinChannelInProgressCopyWithImpl<_$_JoinChannelInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return joinChannelInProgress(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return joinChannelInProgress?.call(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (joinChannelInProgress != null) {
      return joinChannelInProgress(invitation, isRemoteUserJoined,
          isTakePhotoEnabled, localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return joinChannelInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return joinChannelInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (joinChannelInProgress != null) {
      return joinChannelInProgress(this);
    }
    return orElse();
  }
}

abstract class _JoinChannelInProgress implements VideoCallState {
  const factory _JoinChannelInProgress(
      {required final VideoCallInvitation? invitation,
      required final bool isRemoteUserJoined,
      required final bool isTakePhotoEnabled,
      required final int localUid,
      required final int remoteUid}) = _$_JoinChannelInProgress;

  @override
  VideoCallInvitation? get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_JoinChannelInProgressCopyWith<_$_JoinChannelInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JoinChannelSuccessCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_JoinChannelSuccessCopyWith(_$_JoinChannelSuccess value,
          $Res Function(_$_JoinChannelSuccess) then) =
      __$$_JoinChannelSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      RtcEngine engine,
      int localUid,
      int remoteUid});
}

/// @nodoc
class __$$_JoinChannelSuccessCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_JoinChannelSuccess>
    implements _$$_JoinChannelSuccessCopyWith<$Res> {
  __$$_JoinChannelSuccessCopyWithImpl(
      _$_JoinChannelSuccess _value, $Res Function(_$_JoinChannelSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = null,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? engine = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_JoinChannelSuccess(
      invitation: null == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_JoinChannelSuccess implements _JoinChannelSuccess {
  const _$_JoinChannelSuccess(
      {required this.invitation,
      required this.isRemoteUserJoined,
      required this.isTakePhotoEnabled,
      required this.engine,
      required this.localUid,
      required this.remoteUid});

  @override
  final VideoCallInvitation invitation;
  @override
  final bool isRemoteUserJoined;
  @override
  final bool isTakePhotoEnabled;
  @override
  final RtcEngine engine;
  @override
  final int localUid;
  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.joinChannelSuccess(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, engine: $engine, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinChannelSuccess &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, engine, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinChannelSuccessCopyWith<_$_JoinChannelSuccess> get copyWith =>
      __$$_JoinChannelSuccessCopyWithImpl<_$_JoinChannelSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return joinChannelSuccess(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, engine, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return joinChannelSuccess?.call(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, engine, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (joinChannelSuccess != null) {
      return joinChannelSuccess(invitation, isRemoteUserJoined,
          isTakePhotoEnabled, engine, localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return joinChannelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return joinChannelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (joinChannelSuccess != null) {
      return joinChannelSuccess(this);
    }
    return orElse();
  }
}

abstract class _JoinChannelSuccess implements VideoCallState {
  const factory _JoinChannelSuccess(
      {required final VideoCallInvitation invitation,
      required final bool isRemoteUserJoined,
      required final bool isTakePhotoEnabled,
      required final RtcEngine engine,
      required final int localUid,
      required final int remoteUid}) = _$_JoinChannelSuccess;

  @override
  VideoCallInvitation get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  RtcEngine get engine;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_JoinChannelSuccessCopyWith<_$_JoinChannelSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoteUserJoinSuccessCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_RemoteUserJoinSuccessCopyWith(_$_RemoteUserJoinSuccess value,
          $Res Function(_$_RemoteUserJoinSuccess) then) =
      __$$_RemoteUserJoinSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation? invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      RtcEngine engine,
      int localUid,
      int remoteUid});
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
    Object? invitation = freezed,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? engine = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_RemoteUserJoinSuccess(
      invitation: freezed == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation?,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoteUserJoinSuccess implements _RemoteUserJoinSuccess {
  const _$_RemoteUserJoinSuccess(
      {required this.invitation,
      this.isRemoteUserJoined = true,
      required this.isTakePhotoEnabled,
      required this.engine,
      required this.localUid,
      required this.remoteUid});

  @override
  final VideoCallInvitation? invitation;
  @override
  @JsonKey()
  final bool isRemoteUserJoined;
  @override
  final bool isTakePhotoEnabled;
  @override
  final RtcEngine engine;
  @override
  final int localUid;
  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.remoteUserJoinSuccess(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, engine: $engine, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteUserJoinSuccess &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, engine, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteUserJoinSuccessCopyWith<_$_RemoteUserJoinSuccess> get copyWith =>
      __$$_RemoteUserJoinSuccessCopyWithImpl<_$_RemoteUserJoinSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return remoteUserJoinSuccess(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, engine, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return remoteUserJoinSuccess?.call(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, engine, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinSuccess != null) {
      return remoteUserJoinSuccess(invitation, isRemoteUserJoined,
          isTakePhotoEnabled, engine, localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return remoteUserJoinSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return remoteUserJoinSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinSuccess != null) {
      return remoteUserJoinSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoteUserJoinSuccess implements VideoCallState {
  const factory _RemoteUserJoinSuccess(
      {required final VideoCallInvitation? invitation,
      final bool isRemoteUserJoined,
      required final bool isTakePhotoEnabled,
      required final RtcEngine engine,
      required final int localUid,
      required final int remoteUid}) = _$_RemoteUserJoinSuccess;

  @override
  VideoCallInvitation? get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  RtcEngine get engine;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteUserJoinSuccessCopyWith<_$_RemoteUserJoinSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JoinChannelFailureCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_JoinChannelFailureCopyWith(_$_JoinChannelFailure value,
          $Res Function(_$_JoinChannelFailure) then) =
      __$$_JoinChannelFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation? invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      int localUid,
      int remoteUid});
}

/// @nodoc
class __$$_JoinChannelFailureCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_JoinChannelFailure>
    implements _$$_JoinChannelFailureCopyWith<$Res> {
  __$$_JoinChannelFailureCopyWithImpl(
      _$_JoinChannelFailure _value, $Res Function(_$_JoinChannelFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = freezed,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_JoinChannelFailure(
      invitation: freezed == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation?,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_JoinChannelFailure implements _JoinChannelFailure {
  const _$_JoinChannelFailure(
      {required this.invitation,
      required this.isRemoteUserJoined,
      required this.isTakePhotoEnabled,
      required this.localUid,
      required this.remoteUid});

  @override
  final VideoCallInvitation? invitation;
  @override
  final bool isRemoteUserJoined;
  @override
  final bool isTakePhotoEnabled;
  @override
  final int localUid;
  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.joinChannelFailure(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinChannelFailure &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinChannelFailureCopyWith<_$_JoinChannelFailure> get copyWith =>
      __$$_JoinChannelFailureCopyWithImpl<_$_JoinChannelFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return joinChannelFailure(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return joinChannelFailure?.call(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (joinChannelFailure != null) {
      return joinChannelFailure(invitation, isRemoteUserJoined,
          isTakePhotoEnabled, localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return joinChannelFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return joinChannelFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (joinChannelFailure != null) {
      return joinChannelFailure(this);
    }
    return orElse();
  }
}

abstract class _JoinChannelFailure implements VideoCallState {
  const factory _JoinChannelFailure(
      {required final VideoCallInvitation? invitation,
      required final bool isRemoteUserJoined,
      required final bool isTakePhotoEnabled,
      required final int localUid,
      required final int remoteUid}) = _$_JoinChannelFailure;

  @override
  VideoCallInvitation? get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_JoinChannelFailureCopyWith<_$_JoinChannelFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoteUserJoinFailureCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_RemoteUserJoinFailureCopyWith(_$_RemoteUserJoinFailure value,
          $Res Function(_$_RemoteUserJoinFailure) then) =
      __$$_RemoteUserJoinFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation? invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      int localUid,
      int remoteUid});
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
    Object? invitation = freezed,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_RemoteUserJoinFailure(
      invitation: freezed == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation?,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoteUserJoinFailure implements _RemoteUserJoinFailure {
  const _$_RemoteUserJoinFailure(
      {required this.invitation,
      this.isRemoteUserJoined = false,
      required this.isTakePhotoEnabled,
      required this.localUid,
      required this.remoteUid});

  @override
  final VideoCallInvitation? invitation;
  @override
  @JsonKey()
  final bool isRemoteUserJoined;
  @override
  final bool isTakePhotoEnabled;
  @override
  final int localUid;
  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.remoteUserJoinFailure(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteUserJoinFailure &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteUserJoinFailureCopyWith<_$_RemoteUserJoinFailure> get copyWith =>
      __$$_RemoteUserJoinFailureCopyWithImpl<_$_RemoteUserJoinFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return remoteUserJoinFailure(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return remoteUserJoinFailure?.call(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinFailure != null) {
      return remoteUserJoinFailure(invitation, isRemoteUserJoined,
          isTakePhotoEnabled, localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return remoteUserJoinFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return remoteUserJoinFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (remoteUserJoinFailure != null) {
      return remoteUserJoinFailure(this);
    }
    return orElse();
  }
}

abstract class _RemoteUserJoinFailure implements VideoCallState {
  const factory _RemoteUserJoinFailure(
      {required final VideoCallInvitation? invitation,
      final bool isRemoteUserJoined,
      required final bool isTakePhotoEnabled,
      required final int localUid,
      required final int remoteUid}) = _$_RemoteUserJoinFailure;

  @override
  VideoCallInvitation? get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteUserJoinFailureCopyWith<_$_RemoteUserJoinFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LeaveChannelInProgressCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_LeaveChannelInProgressCopyWith(_$_LeaveChannelInProgress value,
          $Res Function(_$_LeaveChannelInProgress) then) =
      __$$_LeaveChannelInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation? invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      int localUid,
      int remoteUid});
}

/// @nodoc
class __$$_LeaveChannelInProgressCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_LeaveChannelInProgress>
    implements _$$_LeaveChannelInProgressCopyWith<$Res> {
  __$$_LeaveChannelInProgressCopyWithImpl(_$_LeaveChannelInProgress _value,
      $Res Function(_$_LeaveChannelInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = freezed,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_LeaveChannelInProgress(
      invitation: freezed == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation?,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LeaveChannelInProgress implements _LeaveChannelInProgress {
  const _$_LeaveChannelInProgress(
      {required this.invitation,
      required this.isRemoteUserJoined,
      required this.isTakePhotoEnabled,
      required this.localUid,
      required this.remoteUid});

  @override
  final VideoCallInvitation? invitation;
  @override
  final bool isRemoteUserJoined;
  @override
  final bool isTakePhotoEnabled;
  @override
  final int localUid;
  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.leaveChannelInProgress(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveChannelInProgress &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaveChannelInProgressCopyWith<_$_LeaveChannelInProgress> get copyWith =>
      __$$_LeaveChannelInProgressCopyWithImpl<_$_LeaveChannelInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return leaveChannelInProgress(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return leaveChannelInProgress?.call(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (leaveChannelInProgress != null) {
      return leaveChannelInProgress(invitation, isRemoteUserJoined,
          isTakePhotoEnabled, localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return leaveChannelInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return leaveChannelInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (leaveChannelInProgress != null) {
      return leaveChannelInProgress(this);
    }
    return orElse();
  }
}

abstract class _LeaveChannelInProgress implements VideoCallState {
  const factory _LeaveChannelInProgress(
      {required final VideoCallInvitation? invitation,
      required final bool isRemoteUserJoined,
      required final bool isTakePhotoEnabled,
      required final int localUid,
      required final int remoteUid}) = _$_LeaveChannelInProgress;

  @override
  VideoCallInvitation? get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveChannelInProgressCopyWith<_$_LeaveChannelInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LeaveChannelSuccessCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_LeaveChannelSuccessCopyWith(_$_LeaveChannelSuccess value,
          $Res Function(_$_LeaveChannelSuccess) then) =
      __$$_LeaveChannelSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation? invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      int localUid,
      int remoteUid});
}

/// @nodoc
class __$$_LeaveChannelSuccessCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_LeaveChannelSuccess>
    implements _$$_LeaveChannelSuccessCopyWith<$Res> {
  __$$_LeaveChannelSuccessCopyWithImpl(_$_LeaveChannelSuccess _value,
      $Res Function(_$_LeaveChannelSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = freezed,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_LeaveChannelSuccess(
      invitation: freezed == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation?,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LeaveChannelSuccess implements _LeaveChannelSuccess {
  const _$_LeaveChannelSuccess(
      {required this.invitation,
      this.isRemoteUserJoined = false,
      required this.isTakePhotoEnabled,
      required this.localUid,
      required this.remoteUid});

  @override
  final VideoCallInvitation? invitation;
  @override
  @JsonKey()
  final bool isRemoteUserJoined;
  @override
  final bool isTakePhotoEnabled;
  @override
  final int localUid;
  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.leaveChannelSuccess(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveChannelSuccess &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaveChannelSuccessCopyWith<_$_LeaveChannelSuccess> get copyWith =>
      __$$_LeaveChannelSuccessCopyWithImpl<_$_LeaveChannelSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return leaveChannelSuccess(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return leaveChannelSuccess?.call(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (leaveChannelSuccess != null) {
      return leaveChannelSuccess(invitation, isRemoteUserJoined,
          isTakePhotoEnabled, localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return leaveChannelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return leaveChannelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (leaveChannelSuccess != null) {
      return leaveChannelSuccess(this);
    }
    return orElse();
  }
}

abstract class _LeaveChannelSuccess implements VideoCallState {
  const factory _LeaveChannelSuccess(
      {required final VideoCallInvitation? invitation,
      final bool isRemoteUserJoined,
      required final bool isTakePhotoEnabled,
      required final int localUid,
      required final int remoteUid}) = _$_LeaveChannelSuccess;

  @override
  VideoCallInvitation? get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveChannelSuccessCopyWith<_$_LeaveChannelSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoteUserLeaveSuccessCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_RemoteUserLeaveSuccessCopyWith(_$_RemoteUserLeaveSuccess value,
          $Res Function(_$_RemoteUserLeaveSuccess) then) =
      __$$_RemoteUserLeaveSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation? invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      RtcEngine? engine,
      int localUid,
      int remoteUid});
}

/// @nodoc
class __$$_RemoteUserLeaveSuccessCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_RemoteUserLeaveSuccess>
    implements _$$_RemoteUserLeaveSuccessCopyWith<$Res> {
  __$$_RemoteUserLeaveSuccessCopyWithImpl(_$_RemoteUserLeaveSuccess _value,
      $Res Function(_$_RemoteUserLeaveSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = freezed,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? engine = freezed,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_RemoteUserLeaveSuccess(
      invitation: freezed == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation?,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine?,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoteUserLeaveSuccess implements _RemoteUserLeaveSuccess {
  const _$_RemoteUserLeaveSuccess(
      {required this.invitation,
      this.isRemoteUserJoined = false,
      required this.isTakePhotoEnabled,
      this.engine = null,
      required this.localUid,
      required this.remoteUid});

  @override
  final VideoCallInvitation? invitation;
  @override
  @JsonKey()
  final bool isRemoteUserJoined;
  @override
  final bool isTakePhotoEnabled;
  @override
  @JsonKey()
  final RtcEngine? engine;
  @override
  final int localUid;
  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.remoteUserLeaveSuccess(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, engine: $engine, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteUserLeaveSuccess &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, engine, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteUserLeaveSuccessCopyWith<_$_RemoteUserLeaveSuccess> get copyWith =>
      __$$_RemoteUserLeaveSuccessCopyWithImpl<_$_RemoteUserLeaveSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return remoteUserLeaveSuccess(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, engine, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return remoteUserLeaveSuccess?.call(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, engine, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (remoteUserLeaveSuccess != null) {
      return remoteUserLeaveSuccess(invitation, isRemoteUserJoined,
          isTakePhotoEnabled, engine, localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return remoteUserLeaveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return remoteUserLeaveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (remoteUserLeaveSuccess != null) {
      return remoteUserLeaveSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoteUserLeaveSuccess implements VideoCallState {
  const factory _RemoteUserLeaveSuccess(
      {required final VideoCallInvitation? invitation,
      final bool isRemoteUserJoined,
      required final bool isTakePhotoEnabled,
      final RtcEngine? engine,
      required final int localUid,
      required final int remoteUid}) = _$_RemoteUserLeaveSuccess;

  @override
  VideoCallInvitation? get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  RtcEngine? get engine;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteUserLeaveSuccessCopyWith<_$_RemoteUserLeaveSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LeaveChannelFailureCopyWith<$Res>
    implements $VideoCallStateCopyWith<$Res> {
  factory _$$_LeaveChannelFailureCopyWith(_$_LeaveChannelFailure value,
          $Res Function(_$_LeaveChannelFailure) then) =
      __$$_LeaveChannelFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoCallInvitation? invitation,
      bool isRemoteUserJoined,
      bool isTakePhotoEnabled,
      int localUid,
      int remoteUid});
}

/// @nodoc
class __$$_LeaveChannelFailureCopyWithImpl<$Res>
    extends _$VideoCallStateCopyWithImpl<$Res, _$_LeaveChannelFailure>
    implements _$$_LeaveChannelFailureCopyWith<$Res> {
  __$$_LeaveChannelFailureCopyWithImpl(_$_LeaveChannelFailure _value,
      $Res Function(_$_LeaveChannelFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitation = freezed,
    Object? isRemoteUserJoined = null,
    Object? isTakePhotoEnabled = null,
    Object? localUid = null,
    Object? remoteUid = null,
  }) {
    return _then(_$_LeaveChannelFailure(
      invitation: freezed == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as VideoCallInvitation?,
      isRemoteUserJoined: null == isRemoteUserJoined
          ? _value.isRemoteUserJoined
          : isRemoteUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isTakePhotoEnabled: null == isTakePhotoEnabled
          ? _value.isTakePhotoEnabled
          : isTakePhotoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LeaveChannelFailure implements _LeaveChannelFailure {
  const _$_LeaveChannelFailure(
      {required this.invitation,
      required this.isRemoteUserJoined,
      required this.isTakePhotoEnabled,
      required this.localUid,
      required this.remoteUid});

  @override
  final VideoCallInvitation? invitation;
  @override
  final bool isRemoteUserJoined;
  @override
  final bool isTakePhotoEnabled;
  @override
  final int localUid;
  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallState.leaveChannelFailure(invitation: $invitation, isRemoteUserJoined: $isRemoteUserJoined, isTakePhotoEnabled: $isTakePhotoEnabled, localUid: $localUid, remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveChannelFailure &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation) &&
            (identical(other.isRemoteUserJoined, isRemoteUserJoined) ||
                other.isRemoteUserJoined == isRemoteUserJoined) &&
            (identical(other.isTakePhotoEnabled, isTakePhotoEnabled) ||
                other.isTakePhotoEnabled == isTakePhotoEnabled) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitation, isRemoteUserJoined,
      isTakePhotoEnabled, localUid, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaveChannelFailureCopyWith<_$_LeaveChannelFailure> get copyWith =>
      __$$_LeaveChannelFailureCopyWithImpl<_$_LeaveChannelFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        initial,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelInProgress,
    required TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        joinChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)
        remoteUserJoinSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        joinChannelFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        remoteUserJoinFailure,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelInProgress,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)
        remoteUserLeaveSuccess,
    required TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            int localUid,
            int remoteUid)
        leaveChannelFailure,
  }) {
    return leaveChannelFailure(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult? Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult? Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult? Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
  }) {
    return leaveChannelFailure?.call(invitation, isRemoteUserJoined,
        isTakePhotoEnabled, localUid, remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        initial,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelInProgress,
    TResult Function(
            VideoCallInvitation invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        joinChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine engine,
            int localUid,
            int remoteUid)?
        remoteUserJoinSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        joinChannelFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        remoteUserJoinFailure,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelInProgress,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelSuccess,
    TResult Function(
            VideoCallInvitation? invitation,
            bool isRemoteUserJoined,
            bool isTakePhotoEnabled,
            RtcEngine? engine,
            int localUid,
            int remoteUid)?
        remoteUserLeaveSuccess,
    TResult Function(VideoCallInvitation? invitation, bool isRemoteUserJoined,
            bool isTakePhotoEnabled, int localUid, int remoteUid)?
        leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (leaveChannelFailure != null) {
      return leaveChannelFailure(invitation, isRemoteUserJoined,
          isTakePhotoEnabled, localUid, remoteUid);
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
    required TResult Function(_RemoteUserJoinSuccess value)
        remoteUserJoinSuccess,
    required TResult Function(_JoinChannelFailure value) joinChannelFailure,
    required TResult Function(_RemoteUserJoinFailure value)
        remoteUserJoinFailure,
    required TResult Function(_LeaveChannelInProgress value)
        leaveChannelInProgress,
    required TResult Function(_LeaveChannelSuccess value) leaveChannelSuccess,
    required TResult Function(_RemoteUserLeaveSuccess value)
        remoteUserLeaveSuccess,
    required TResult Function(_LeaveChannelFailure value) leaveChannelFailure,
  }) {
    return leaveChannelFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult? Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult? Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult? Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult? Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult? Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult? Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult? Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult? Function(_LeaveChannelFailure value)? leaveChannelFailure,
  }) {
    return leaveChannelFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_JoinChannelInProgress value)? joinChannelInProgress,
    TResult Function(_JoinChannelSuccess value)? joinChannelSuccess,
    TResult Function(_RemoteUserJoinSuccess value)? remoteUserJoinSuccess,
    TResult Function(_JoinChannelFailure value)? joinChannelFailure,
    TResult Function(_RemoteUserJoinFailure value)? remoteUserJoinFailure,
    TResult Function(_LeaveChannelInProgress value)? leaveChannelInProgress,
    TResult Function(_LeaveChannelSuccess value)? leaveChannelSuccess,
    TResult Function(_RemoteUserLeaveSuccess value)? remoteUserLeaveSuccess,
    TResult Function(_LeaveChannelFailure value)? leaveChannelFailure,
    required TResult orElse(),
  }) {
    if (leaveChannelFailure != null) {
      return leaveChannelFailure(this);
    }
    return orElse();
  }
}

abstract class _LeaveChannelFailure implements VideoCallState {
  const factory _LeaveChannelFailure(
      {required final VideoCallInvitation? invitation,
      required final bool isRemoteUserJoined,
      required final bool isTakePhotoEnabled,
      required final int localUid,
      required final int remoteUid}) = _$_LeaveChannelFailure;

  @override
  VideoCallInvitation? get invitation;
  @override
  bool get isRemoteUserJoined;
  @override
  bool get isTakePhotoEnabled;
  @override
  int get localUid;
  @override
  int get remoteUid;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveChannelFailureCopyWith<_$_LeaveChannelFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
