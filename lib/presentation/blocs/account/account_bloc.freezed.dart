// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOutStarted,
    required TResult Function() pickImageStarted,
    required TResult Function(String name) updateNameStarted,
    required TResult Function(User user) currentUserUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOutStarted,
    TResult? Function()? pickImageStarted,
    TResult? Function(String name)? updateNameStarted,
    TResult? Function(User user)? currentUserUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOutStarted,
    TResult Function()? pickImageStarted,
    TResult Function(String name)? updateNameStarted,
    TResult Function(User user)? currentUserUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_PickImageStarted value) pickImageStarted,
    required TResult Function(_UpdateNameStarted value) updateNameStarted,
    required TResult Function(_CurrentUserUpdated value) currentUserUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_PickImageStarted value)? pickImageStarted,
    TResult? Function(_UpdateNameStarted value)? updateNameStarted,
    TResult? Function(_CurrentUserUpdated value)? currentUserUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_PickImageStarted value)? pickImageStarted,
    TResult Function(_UpdateNameStarted value)? updateNameStarted,
    TResult Function(_CurrentUserUpdated value)? currentUserUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

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
    extends _$AccountEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AccountEvent.started()';
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
    required TResult Function() signOutStarted,
    required TResult Function() pickImageStarted,
    required TResult Function(String name) updateNameStarted,
    required TResult Function(User user) currentUserUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOutStarted,
    TResult? Function()? pickImageStarted,
    TResult? Function(String name)? updateNameStarted,
    TResult? Function(User user)? currentUserUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOutStarted,
    TResult Function()? pickImageStarted,
    TResult Function(String name)? updateNameStarted,
    TResult Function(User user)? currentUserUpdated,
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
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_PickImageStarted value) pickImageStarted,
    required TResult Function(_UpdateNameStarted value) updateNameStarted,
    required TResult Function(_CurrentUserUpdated value) currentUserUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_PickImageStarted value)? pickImageStarted,
    TResult? Function(_UpdateNameStarted value)? updateNameStarted,
    TResult? Function(_CurrentUserUpdated value)? currentUserUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_PickImageStarted value)? pickImageStarted,
    TResult Function(_UpdateNameStarted value)? updateNameStarted,
    TResult Function(_CurrentUserUpdated value)? currentUserUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AccountEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SignOutStartedCopyWith<$Res> {
  factory _$$_SignOutStartedCopyWith(
          _$_SignOutStarted value, $Res Function(_$_SignOutStarted) then) =
      __$$_SignOutStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutStartedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_SignOutStarted>
    implements _$$_SignOutStartedCopyWith<$Res> {
  __$$_SignOutStartedCopyWithImpl(
      _$_SignOutStarted _value, $Res Function(_$_SignOutStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOutStarted implements _SignOutStarted {
  const _$_SignOutStarted();

  @override
  String toString() {
    return 'AccountEvent.signOutStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOutStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOutStarted,
    required TResult Function() pickImageStarted,
    required TResult Function(String name) updateNameStarted,
    required TResult Function(User user) currentUserUpdated,
  }) {
    return signOutStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOutStarted,
    TResult? Function()? pickImageStarted,
    TResult? Function(String name)? updateNameStarted,
    TResult? Function(User user)? currentUserUpdated,
  }) {
    return signOutStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOutStarted,
    TResult Function()? pickImageStarted,
    TResult Function(String name)? updateNameStarted,
    TResult Function(User user)? currentUserUpdated,
    required TResult orElse(),
  }) {
    if (signOutStarted != null) {
      return signOutStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_PickImageStarted value) pickImageStarted,
    required TResult Function(_UpdateNameStarted value) updateNameStarted,
    required TResult Function(_CurrentUserUpdated value) currentUserUpdated,
  }) {
    return signOutStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_PickImageStarted value)? pickImageStarted,
    TResult? Function(_UpdateNameStarted value)? updateNameStarted,
    TResult? Function(_CurrentUserUpdated value)? currentUserUpdated,
  }) {
    return signOutStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_PickImageStarted value)? pickImageStarted,
    TResult Function(_UpdateNameStarted value)? updateNameStarted,
    TResult Function(_CurrentUserUpdated value)? currentUserUpdated,
    required TResult orElse(),
  }) {
    if (signOutStarted != null) {
      return signOutStarted(this);
    }
    return orElse();
  }
}

abstract class _SignOutStarted implements AccountEvent {
  const factory _SignOutStarted() = _$_SignOutStarted;
}

/// @nodoc
abstract class _$$_PickImageStartedCopyWith<$Res> {
  factory _$$_PickImageStartedCopyWith(
          _$_PickImageStarted value, $Res Function(_$_PickImageStarted) then) =
      __$$_PickImageStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PickImageStartedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_PickImageStarted>
    implements _$$_PickImageStartedCopyWith<$Res> {
  __$$_PickImageStartedCopyWithImpl(
      _$_PickImageStarted _value, $Res Function(_$_PickImageStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PickImageStarted implements _PickImageStarted {
  const _$_PickImageStarted();

  @override
  String toString() {
    return 'AccountEvent.pickImageStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PickImageStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOutStarted,
    required TResult Function() pickImageStarted,
    required TResult Function(String name) updateNameStarted,
    required TResult Function(User user) currentUserUpdated,
  }) {
    return pickImageStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOutStarted,
    TResult? Function()? pickImageStarted,
    TResult? Function(String name)? updateNameStarted,
    TResult? Function(User user)? currentUserUpdated,
  }) {
    return pickImageStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOutStarted,
    TResult Function()? pickImageStarted,
    TResult Function(String name)? updateNameStarted,
    TResult Function(User user)? currentUserUpdated,
    required TResult orElse(),
  }) {
    if (pickImageStarted != null) {
      return pickImageStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_PickImageStarted value) pickImageStarted,
    required TResult Function(_UpdateNameStarted value) updateNameStarted,
    required TResult Function(_CurrentUserUpdated value) currentUserUpdated,
  }) {
    return pickImageStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_PickImageStarted value)? pickImageStarted,
    TResult? Function(_UpdateNameStarted value)? updateNameStarted,
    TResult? Function(_CurrentUserUpdated value)? currentUserUpdated,
  }) {
    return pickImageStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_PickImageStarted value)? pickImageStarted,
    TResult Function(_UpdateNameStarted value)? updateNameStarted,
    TResult Function(_CurrentUserUpdated value)? currentUserUpdated,
    required TResult orElse(),
  }) {
    if (pickImageStarted != null) {
      return pickImageStarted(this);
    }
    return orElse();
  }
}

abstract class _PickImageStarted implements AccountEvent {
  const factory _PickImageStarted() = _$_PickImageStarted;
}

/// @nodoc
abstract class _$$_UpdateNameStartedCopyWith<$Res> {
  factory _$$_UpdateNameStartedCopyWith(_$_UpdateNameStarted value,
          $Res Function(_$_UpdateNameStarted) then) =
      __$$_UpdateNameStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_UpdateNameStartedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_UpdateNameStarted>
    implements _$$_UpdateNameStartedCopyWith<$Res> {
  __$$_UpdateNameStartedCopyWithImpl(
      _$_UpdateNameStarted _value, $Res Function(_$_UpdateNameStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_UpdateNameStarted(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateNameStarted implements _UpdateNameStarted {
  const _$_UpdateNameStarted(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AccountEvent.updateNameStarted(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNameStarted &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateNameStartedCopyWith<_$_UpdateNameStarted> get copyWith =>
      __$$_UpdateNameStartedCopyWithImpl<_$_UpdateNameStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOutStarted,
    required TResult Function() pickImageStarted,
    required TResult Function(String name) updateNameStarted,
    required TResult Function(User user) currentUserUpdated,
  }) {
    return updateNameStarted(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOutStarted,
    TResult? Function()? pickImageStarted,
    TResult? Function(String name)? updateNameStarted,
    TResult? Function(User user)? currentUserUpdated,
  }) {
    return updateNameStarted?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOutStarted,
    TResult Function()? pickImageStarted,
    TResult Function(String name)? updateNameStarted,
    TResult Function(User user)? currentUserUpdated,
    required TResult orElse(),
  }) {
    if (updateNameStarted != null) {
      return updateNameStarted(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_PickImageStarted value) pickImageStarted,
    required TResult Function(_UpdateNameStarted value) updateNameStarted,
    required TResult Function(_CurrentUserUpdated value) currentUserUpdated,
  }) {
    return updateNameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_PickImageStarted value)? pickImageStarted,
    TResult? Function(_UpdateNameStarted value)? updateNameStarted,
    TResult? Function(_CurrentUserUpdated value)? currentUserUpdated,
  }) {
    return updateNameStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_PickImageStarted value)? pickImageStarted,
    TResult Function(_UpdateNameStarted value)? updateNameStarted,
    TResult Function(_CurrentUserUpdated value)? currentUserUpdated,
    required TResult orElse(),
  }) {
    if (updateNameStarted != null) {
      return updateNameStarted(this);
    }
    return orElse();
  }
}

abstract class _UpdateNameStarted implements AccountEvent {
  const factory _UpdateNameStarted(final String name) = _$_UpdateNameStarted;

  String get name;
  @JsonKey(ignore: true)
  _$$_UpdateNameStartedCopyWith<_$_UpdateNameStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrentUserUpdatedCopyWith<$Res> {
  factory _$$_CurrentUserUpdatedCopyWith(_$_CurrentUserUpdated value,
          $Res Function(_$_CurrentUserUpdated) then) =
      __$$_CurrentUserUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_CurrentUserUpdatedCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_CurrentUserUpdated>
    implements _$$_CurrentUserUpdatedCopyWith<$Res> {
  __$$_CurrentUserUpdatedCopyWithImpl(
      _$_CurrentUserUpdated _value, $Res Function(_$_CurrentUserUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_CurrentUserUpdated(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_CurrentUserUpdated implements _CurrentUserUpdated {
  const _$_CurrentUserUpdated(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AccountEvent.currentUserUpdated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentUserUpdated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentUserUpdatedCopyWith<_$_CurrentUserUpdated> get copyWith =>
      __$$_CurrentUserUpdatedCopyWithImpl<_$_CurrentUserUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOutStarted,
    required TResult Function() pickImageStarted,
    required TResult Function(String name) updateNameStarted,
    required TResult Function(User user) currentUserUpdated,
  }) {
    return currentUserUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOutStarted,
    TResult? Function()? pickImageStarted,
    TResult? Function(String name)? updateNameStarted,
    TResult? Function(User user)? currentUserUpdated,
  }) {
    return currentUserUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOutStarted,
    TResult Function()? pickImageStarted,
    TResult Function(String name)? updateNameStarted,
    TResult Function(User user)? currentUserUpdated,
    required TResult orElse(),
  }) {
    if (currentUserUpdated != null) {
      return currentUserUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignOutStarted value) signOutStarted,
    required TResult Function(_PickImageStarted value) pickImageStarted,
    required TResult Function(_UpdateNameStarted value) updateNameStarted,
    required TResult Function(_CurrentUserUpdated value) currentUserUpdated,
  }) {
    return currentUserUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_PickImageStarted value)? pickImageStarted,
    TResult? Function(_UpdateNameStarted value)? updateNameStarted,
    TResult? Function(_CurrentUserUpdated value)? currentUserUpdated,
  }) {
    return currentUserUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_PickImageStarted value)? pickImageStarted,
    TResult Function(_UpdateNameStarted value)? updateNameStarted,
    TResult Function(_CurrentUserUpdated value)? currentUserUpdated,
    required TResult orElse(),
  }) {
    if (currentUserUpdated != null) {
      return currentUserUpdated(this);
    }
    return orElse();
  }
}

abstract class _CurrentUserUpdated implements AccountEvent {
  const factory _CurrentUserUpdated(final User user) = _$_CurrentUserUpdated;

  User get user;
  @JsonKey(ignore: true)
  _$$_CurrentUserUpdatedCopyWith<_$_CurrentUserUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)
        initial,
    required TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)
        updateInProgress,
    required TResult Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)
        updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        initial,
    TResult? Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        updateInProgress,
    TResult? Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)?
        updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        initial,
    TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        updateInProgress,
    TResult Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)?
        updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({String? name, String? phoneNumber, String? profilePictureUrl});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? phoneNumber, String? profilePictureUrl});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_$_Initial(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.name = null,
      this.phoneNumber = null,
      this.profilePictureUrl = null});

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? phoneNumber;
  @override
  @JsonKey()
  final String? profilePictureUrl;

  @override
  String toString() {
    return 'AccountState.initial(name: $name, phoneNumber: $phoneNumber, profilePictureUrl: $profilePictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phoneNumber, profilePictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)
        initial,
    required TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)
        updateInProgress,
    required TResult Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)
        updateFailure,
  }) {
    return initial(name, phoneNumber, profilePictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        initial,
    TResult? Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        updateInProgress,
    TResult? Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)?
        updateFailure,
  }) {
    return initial?.call(name, phoneNumber, profilePictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        initial,
    TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        updateInProgress,
    TResult Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)?
        updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(name, phoneNumber, profilePictureUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AccountState {
  const factory _Initial(
      {final String? name,
      final String? phoneNumber,
      final String? profilePictureUrl}) = _$_Initial;

  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  String? get profilePictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateInProgressCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_UpdateInProgressCopyWith(
          _$_UpdateInProgress value, $Res Function(_$_UpdateInProgress) then) =
      __$$_UpdateInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? phoneNumber, String? profilePictureUrl});
}

/// @nodoc
class __$$_UpdateInProgressCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_UpdateInProgress>
    implements _$$_UpdateInProgressCopyWith<$Res> {
  __$$_UpdateInProgressCopyWithImpl(
      _$_UpdateInProgress _value, $Res Function(_$_UpdateInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_$_UpdateInProgress(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateInProgress implements _UpdateInProgress {
  const _$_UpdateInProgress(
      {required this.name,
      required this.phoneNumber,
      required this.profilePictureUrl});

  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? profilePictureUrl;

  @override
  String toString() {
    return 'AccountState.updateInProgress(name: $name, phoneNumber: $phoneNumber, profilePictureUrl: $profilePictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateInProgress &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phoneNumber, profilePictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateInProgressCopyWith<_$_UpdateInProgress> get copyWith =>
      __$$_UpdateInProgressCopyWithImpl<_$_UpdateInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)
        initial,
    required TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)
        updateInProgress,
    required TResult Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)
        updateFailure,
  }) {
    return updateInProgress(name, phoneNumber, profilePictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        initial,
    TResult? Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        updateInProgress,
    TResult? Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)?
        updateFailure,
  }) {
    return updateInProgress?.call(name, phoneNumber, profilePictureUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        initial,
    TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        updateInProgress,
    TResult Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)?
        updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(name, phoneNumber, profilePictureUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateInProgress implements AccountState {
  const factory _UpdateInProgress(
      {required final String? name,
      required final String? phoneNumber,
      required final String? profilePictureUrl}) = _$_UpdateInProgress;

  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  String? get profilePictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateInProgressCopyWith<_$_UpdateInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateFailureCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$_UpdateFailureCopyWith(
          _$_UpdateFailure value, $Res Function(_$_UpdateFailure) then) =
      __$$_UpdateFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? phoneNumber,
      String? profilePictureUrl,
      String errorMessage});
}

/// @nodoc
class __$$_UpdateFailureCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_UpdateFailure>
    implements _$$_UpdateFailureCopyWith<$Res> {
  __$$_UpdateFailureCopyWithImpl(
      _$_UpdateFailure _value, $Res Function(_$_UpdateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? profilePictureUrl = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$_UpdateFailure(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure(
      {required this.name,
      required this.phoneNumber,
      required this.profilePictureUrl,
      required this.errorMessage});

  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? profilePictureUrl;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AccountState.updateFailure(name: $name, phoneNumber: $phoneNumber, profilePictureUrl: $profilePictureUrl, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFailure &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, phoneNumber, profilePictureUrl, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFailureCopyWith<_$_UpdateFailure> get copyWith =>
      __$$_UpdateFailureCopyWithImpl<_$_UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)
        initial,
    required TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)
        updateInProgress,
    required TResult Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)
        updateFailure,
  }) {
    return updateFailure(name, phoneNumber, profilePictureUrl, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        initial,
    TResult? Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        updateInProgress,
    TResult? Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)?
        updateFailure,
  }) {
    return updateFailure?.call(
        name, phoneNumber, profilePictureUrl, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        initial,
    TResult Function(
            String? name, String? phoneNumber, String? profilePictureUrl)?
        updateInProgress,
    TResult Function(String? name, String? phoneNumber,
            String? profilePictureUrl, String errorMessage)?
        updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(name, phoneNumber, profilePictureUrl, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements AccountState {
  const factory _UpdateFailure(
      {required final String? name,
      required final String? phoneNumber,
      required final String? profilePictureUrl,
      required final String errorMessage}) = _$_UpdateFailure;

  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  String? get profilePictureUrl;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateFailureCopyWith<_$_UpdateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
