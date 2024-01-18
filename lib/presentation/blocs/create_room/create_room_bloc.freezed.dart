// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateRoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initStarted,
    required TResult Function() retryStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initStarted,
    TResult? Function()? retryStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? retryStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initStarted,
    required TResult Function(_RetryStarted value) retryStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initStarted,
    TResult? Function(_RetryStarted value)? retryStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initStarted,
    TResult Function(_RetryStarted value)? retryStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomEventCopyWith<$Res> {
  factory $CreateRoomEventCopyWith(
          CreateRoomEvent value, $Res Function(CreateRoomEvent) then) =
      _$CreateRoomEventCopyWithImpl<$Res, CreateRoomEvent>;
}

/// @nodoc
class _$CreateRoomEventCopyWithImpl<$Res, $Val extends CreateRoomEvent>
    implements $CreateRoomEventCopyWith<$Res> {
  _$CreateRoomEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateRoomEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  _$StartedImpl();

  @override
  String toString() {
    return 'CreateRoomEvent.initStarted()';
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
    required TResult Function() initStarted,
    required TResult Function() retryStarted,
  }) {
    return initStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initStarted,
    TResult? Function()? retryStarted,
  }) {
    return initStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? retryStarted,
    required TResult orElse(),
  }) {
    if (initStarted != null) {
      return initStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initStarted,
    required TResult Function(_RetryStarted value) retryStarted,
  }) {
    return initStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initStarted,
    TResult? Function(_RetryStarted value)? retryStarted,
  }) {
    return initStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initStarted,
    TResult Function(_RetryStarted value)? retryStarted,
    required TResult orElse(),
  }) {
    if (initStarted != null) {
      return initStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateRoomEvent {
  factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RetryStartedImplCopyWith<$Res> {
  factory _$$RetryStartedImplCopyWith(
          _$RetryStartedImpl value, $Res Function(_$RetryStartedImpl) then) =
      __$$RetryStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryStartedImplCopyWithImpl<$Res>
    extends _$CreateRoomEventCopyWithImpl<$Res, _$RetryStartedImpl>
    implements _$$RetryStartedImplCopyWith<$Res> {
  __$$RetryStartedImplCopyWithImpl(
      _$RetryStartedImpl _value, $Res Function(_$RetryStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RetryStartedImpl implements _RetryStarted {
  _$RetryStartedImpl();

  @override
  String toString() {
    return 'CreateRoomEvent.retryStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetryStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initStarted,
    required TResult Function() retryStarted,
  }) {
    return retryStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initStarted,
    TResult? Function()? retryStarted,
  }) {
    return retryStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initStarted,
    TResult Function()? retryStarted,
    required TResult orElse(),
  }) {
    if (retryStarted != null) {
      return retryStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initStarted,
    required TResult Function(_RetryStarted value) retryStarted,
  }) {
    return retryStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initStarted,
    TResult? Function(_RetryStarted value)? retryStarted,
  }) {
    return retryStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initStarted,
    TResult Function(_RetryStarted value)? retryStarted,
    required TResult orElse(),
  }) {
    if (retryStarted != null) {
      return retryStarted(this);
    }
    return orElse();
  }
}

abstract class _RetryStarted implements CreateRoomEvent {
  factory _RetryStarted() = _$RetryStartedImpl;
}

/// @nodoc
mixin _$CreateRoomState {
  Contact get contact => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function(Contact contact) inProgress,
    required TResult Function(Contact contact, Failure failure) failure,
    required TResult Function(Contact contact, Room room) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function(Contact contact)? inProgress,
    TResult? Function(Contact contact, Failure failure)? failure,
    TResult? Function(Contact contact, Room room)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function(Contact contact)? inProgress,
    TResult Function(Contact contact, Failure failure)? failure,
    TResult Function(Contact contact, Room room)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRoomStateCopyWith<CreateRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomStateCopyWith<$Res> {
  factory $CreateRoomStateCopyWith(
          CreateRoomState value, $Res Function(CreateRoomState) then) =
      _$CreateRoomStateCopyWithImpl<$Res, CreateRoomState>;
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class _$CreateRoomStateCopyWithImpl<$Res, $Val extends CreateRoomState>
    implements $CreateRoomStateCopyWith<$Res> {
  _$CreateRoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CreateRoomStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateRoomStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$InitialImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'CreateRoomState.initial(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function(Contact contact) inProgress,
    required TResult Function(Contact contact, Failure failure) failure,
    required TResult Function(Contact contact, Room room) success,
  }) {
    return initial(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function(Contact contact)? inProgress,
    TResult? Function(Contact contact, Failure failure)? failure,
    TResult? Function(Contact contact, Room room)? success,
  }) {
    return initial?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function(Contact contact)? inProgress,
    TResult Function(Contact contact, Failure failure)? failure,
    TResult Function(Contact contact, Room room)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateRoomState {
  factory _Initial(final Contact contact) = _$InitialImpl;

  @override
  Contact get contact;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res>
    implements $CreateRoomStateCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$CreateRoomStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$InProgressImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  _$InProgressImpl(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'CreateRoomState.inProgress(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      __$$InProgressImplCopyWithImpl<_$InProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function(Contact contact) inProgress,
    required TResult Function(Contact contact, Failure failure) failure,
    required TResult Function(Contact contact, Room room) success,
  }) {
    return inProgress(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function(Contact contact)? inProgress,
    TResult? Function(Contact contact, Failure failure)? failure,
    TResult? Function(Contact contact, Room room)? success,
  }) {
    return inProgress?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function(Contact contact)? inProgress,
    TResult Function(Contact contact, Failure failure)? failure,
    TResult Function(Contact contact, Room room)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements CreateRoomState {
  factory _InProgress(final Contact contact) = _$InProgressImpl;

  @override
  Contact get contact;
  @override
  @JsonKey(ignore: true)
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $CreateRoomStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact, Failure failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CreateRoomStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  _$FailureImpl(this.contact, this.failure);

  @override
  final Contact contact;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'CreateRoomState.failure(contact: $contact, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function(Contact contact) inProgress,
    required TResult Function(Contact contact, Failure failure) failure,
    required TResult Function(Contact contact, Room room) success,
  }) {
    return failure(contact, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function(Contact contact)? inProgress,
    TResult? Function(Contact contact, Failure failure)? failure,
    TResult? Function(Contact contact, Room room)? success,
  }) {
    return failure?.call(contact, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function(Contact contact)? inProgress,
    TResult Function(Contact contact, Failure failure)? failure,
    TResult Function(Contact contact, Room room)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(contact, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CreateRoomState {
  factory _Failure(final Contact contact, final Failure failure) =
      _$FailureImpl;

  @override
  Contact get contact;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $CreateRoomStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact, Room room});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CreateRoomStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? room = null,
  }) {
    return _then(_$SuccessImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  _$SuccessImpl(this.contact, this.room);

  @override
  final Contact contact;
  @override
  final Room room;

  @override
  String toString() {
    return 'CreateRoomState.success(contact: $contact, room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) initial,
    required TResult Function(Contact contact) inProgress,
    required TResult Function(Contact contact, Failure failure) failure,
    required TResult Function(Contact contact, Room room) success,
  }) {
    return success(contact, room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? initial,
    TResult? Function(Contact contact)? inProgress,
    TResult? Function(Contact contact, Failure failure)? failure,
    TResult? Function(Contact contact, Room room)? success,
  }) {
    return success?.call(contact, room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? initial,
    TResult Function(Contact contact)? inProgress,
    TResult Function(Contact contact, Failure failure)? failure,
    TResult Function(Contact contact, Room room)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(contact, room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CreateRoomState {
  factory _Success(final Contact contact, final Room room) = _$SuccessImpl;

  @override
  Contact get contact;
  Room get room;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
