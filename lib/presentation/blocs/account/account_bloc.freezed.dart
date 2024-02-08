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
    required TResult Function() deleteAccountStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOutStarted,
    TResult? Function()? pickImageStarted,
    TResult? Function(String name)? updateNameStarted,
    TResult? Function(User user)? currentUserUpdated,
    TResult? Function()? deleteAccountStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOutStarted,
    TResult Function()? pickImageStarted,
    TResult Function(String name)? updateNameStarted,
    TResult Function(User user)? currentUserUpdated,
    TResult Function()? deleteAccountStarted,
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
    required TResult Function(_DeleteAccountStarted value) deleteAccountStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_PickImageStarted value)? pickImageStarted,
    TResult? Function(_UpdateNameStarted value)? updateNameStarted,
    TResult? Function(_CurrentUserUpdated value)? currentUserUpdated,
    TResult? Function(_DeleteAccountStarted value)? deleteAccountStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_PickImageStarted value)? pickImageStarted,
    TResult Function(_UpdateNameStarted value)? updateNameStarted,
    TResult Function(_CurrentUserUpdated value)? currentUserUpdated,
    TResult Function(_DeleteAccountStarted value)? deleteAccountStarted,
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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AccountEvent.started()';
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
    required TResult Function() signOutStarted,
    required TResult Function() pickImageStarted,
    required TResult Function(String name) updateNameStarted,
    required TResult Function(User user) currentUserUpdated,
    required TResult Function() deleteAccountStarted,
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
    TResult? Function()? deleteAccountStarted,
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
    TResult Function()? deleteAccountStarted,
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
    required TResult Function(_DeleteAccountStarted value) deleteAccountStarted,
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
    TResult? Function(_DeleteAccountStarted value)? deleteAccountStarted,
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
    TResult Function(_DeleteAccountStarted value)? deleteAccountStarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AccountEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SignOutStartedImplCopyWith<$Res> {
  factory _$$SignOutStartedImplCopyWith(_$SignOutStartedImpl value,
          $Res Function(_$SignOutStartedImpl) then) =
      __$$SignOutStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutStartedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$SignOutStartedImpl>
    implements _$$SignOutStartedImplCopyWith<$Res> {
  __$$SignOutStartedImplCopyWithImpl(
      _$SignOutStartedImpl _value, $Res Function(_$SignOutStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutStartedImpl implements _SignOutStarted {
  const _$SignOutStartedImpl();

  @override
  String toString() {
    return 'AccountEvent.signOutStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutStartedImpl);
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
    required TResult Function() deleteAccountStarted,
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
    TResult? Function()? deleteAccountStarted,
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
    TResult Function()? deleteAccountStarted,
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
    required TResult Function(_DeleteAccountStarted value) deleteAccountStarted,
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
    TResult? Function(_DeleteAccountStarted value)? deleteAccountStarted,
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
    TResult Function(_DeleteAccountStarted value)? deleteAccountStarted,
    required TResult orElse(),
  }) {
    if (signOutStarted != null) {
      return signOutStarted(this);
    }
    return orElse();
  }
}

abstract class _SignOutStarted implements AccountEvent {
  const factory _SignOutStarted() = _$SignOutStartedImpl;
}

/// @nodoc
abstract class _$$PickImageStartedImplCopyWith<$Res> {
  factory _$$PickImageStartedImplCopyWith(_$PickImageStartedImpl value,
          $Res Function(_$PickImageStartedImpl) then) =
      __$$PickImageStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageStartedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$PickImageStartedImpl>
    implements _$$PickImageStartedImplCopyWith<$Res> {
  __$$PickImageStartedImplCopyWithImpl(_$PickImageStartedImpl _value,
      $Res Function(_$PickImageStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImageStartedImpl implements _PickImageStarted {
  const _$PickImageStartedImpl();

  @override
  String toString() {
    return 'AccountEvent.pickImageStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickImageStartedImpl);
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
    required TResult Function() deleteAccountStarted,
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
    TResult? Function()? deleteAccountStarted,
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
    TResult Function()? deleteAccountStarted,
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
    required TResult Function(_DeleteAccountStarted value) deleteAccountStarted,
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
    TResult? Function(_DeleteAccountStarted value)? deleteAccountStarted,
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
    TResult Function(_DeleteAccountStarted value)? deleteAccountStarted,
    required TResult orElse(),
  }) {
    if (pickImageStarted != null) {
      return pickImageStarted(this);
    }
    return orElse();
  }
}

abstract class _PickImageStarted implements AccountEvent {
  const factory _PickImageStarted() = _$PickImageStartedImpl;
}

/// @nodoc
abstract class _$$UpdateNameStartedImplCopyWith<$Res> {
  factory _$$UpdateNameStartedImplCopyWith(_$UpdateNameStartedImpl value,
          $Res Function(_$UpdateNameStartedImpl) then) =
      __$$UpdateNameStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UpdateNameStartedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$UpdateNameStartedImpl>
    implements _$$UpdateNameStartedImplCopyWith<$Res> {
  __$$UpdateNameStartedImplCopyWithImpl(_$UpdateNameStartedImpl _value,
      $Res Function(_$UpdateNameStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UpdateNameStartedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNameStartedImpl implements _UpdateNameStarted {
  const _$UpdateNameStartedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AccountEvent.updateNameStarted(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNameStartedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNameStartedImplCopyWith<_$UpdateNameStartedImpl> get copyWith =>
      __$$UpdateNameStartedImplCopyWithImpl<_$UpdateNameStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOutStarted,
    required TResult Function() pickImageStarted,
    required TResult Function(String name) updateNameStarted,
    required TResult Function(User user) currentUserUpdated,
    required TResult Function() deleteAccountStarted,
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
    TResult? Function()? deleteAccountStarted,
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
    TResult Function()? deleteAccountStarted,
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
    required TResult Function(_DeleteAccountStarted value) deleteAccountStarted,
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
    TResult? Function(_DeleteAccountStarted value)? deleteAccountStarted,
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
    TResult Function(_DeleteAccountStarted value)? deleteAccountStarted,
    required TResult orElse(),
  }) {
    if (updateNameStarted != null) {
      return updateNameStarted(this);
    }
    return orElse();
  }
}

abstract class _UpdateNameStarted implements AccountEvent {
  const factory _UpdateNameStarted(final String name) = _$UpdateNameStartedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$UpdateNameStartedImplCopyWith<_$UpdateNameStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentUserUpdatedImplCopyWith<$Res> {
  factory _$$CurrentUserUpdatedImplCopyWith(_$CurrentUserUpdatedImpl value,
          $Res Function(_$CurrentUserUpdatedImpl) then) =
      __$$CurrentUserUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$CurrentUserUpdatedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$CurrentUserUpdatedImpl>
    implements _$$CurrentUserUpdatedImplCopyWith<$Res> {
  __$$CurrentUserUpdatedImplCopyWithImpl(_$CurrentUserUpdatedImpl _value,
      $Res Function(_$CurrentUserUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$CurrentUserUpdatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$CurrentUserUpdatedImpl implements _CurrentUserUpdated {
  const _$CurrentUserUpdatedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AccountEvent.currentUserUpdated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUserUpdatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUserUpdatedImplCopyWith<_$CurrentUserUpdatedImpl> get copyWith =>
      __$$CurrentUserUpdatedImplCopyWithImpl<_$CurrentUserUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signOutStarted,
    required TResult Function() pickImageStarted,
    required TResult Function(String name) updateNameStarted,
    required TResult Function(User user) currentUserUpdated,
    required TResult Function() deleteAccountStarted,
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
    TResult? Function()? deleteAccountStarted,
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
    TResult Function()? deleteAccountStarted,
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
    required TResult Function(_DeleteAccountStarted value) deleteAccountStarted,
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
    TResult? Function(_DeleteAccountStarted value)? deleteAccountStarted,
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
    TResult Function(_DeleteAccountStarted value)? deleteAccountStarted,
    required TResult orElse(),
  }) {
    if (currentUserUpdated != null) {
      return currentUserUpdated(this);
    }
    return orElse();
  }
}

abstract class _CurrentUserUpdated implements AccountEvent {
  const factory _CurrentUserUpdated(final User user) = _$CurrentUserUpdatedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$CurrentUserUpdatedImplCopyWith<_$CurrentUserUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAccountStartedImplCopyWith<$Res> {
  factory _$$DeleteAccountStartedImplCopyWith(_$DeleteAccountStartedImpl value,
          $Res Function(_$DeleteAccountStartedImpl) then) =
      __$$DeleteAccountStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAccountStartedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$DeleteAccountStartedImpl>
    implements _$$DeleteAccountStartedImplCopyWith<$Res> {
  __$$DeleteAccountStartedImplCopyWithImpl(_$DeleteAccountStartedImpl _value,
      $Res Function(_$DeleteAccountStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAccountStartedImpl implements _DeleteAccountStarted {
  const _$DeleteAccountStartedImpl();

  @override
  String toString() {
    return 'AccountEvent.deleteAccountStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountStartedImpl);
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
    required TResult Function() deleteAccountStarted,
  }) {
    return deleteAccountStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signOutStarted,
    TResult? Function()? pickImageStarted,
    TResult? Function(String name)? updateNameStarted,
    TResult? Function(User user)? currentUserUpdated,
    TResult? Function()? deleteAccountStarted,
  }) {
    return deleteAccountStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signOutStarted,
    TResult Function()? pickImageStarted,
    TResult Function(String name)? updateNameStarted,
    TResult Function(User user)? currentUserUpdated,
    TResult Function()? deleteAccountStarted,
    required TResult orElse(),
  }) {
    if (deleteAccountStarted != null) {
      return deleteAccountStarted();
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
    required TResult Function(_DeleteAccountStarted value) deleteAccountStarted,
  }) {
    return deleteAccountStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignOutStarted value)? signOutStarted,
    TResult? Function(_PickImageStarted value)? pickImageStarted,
    TResult? Function(_UpdateNameStarted value)? updateNameStarted,
    TResult? Function(_CurrentUserUpdated value)? currentUserUpdated,
    TResult? Function(_DeleteAccountStarted value)? deleteAccountStarted,
  }) {
    return deleteAccountStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignOutStarted value)? signOutStarted,
    TResult Function(_PickImageStarted value)? pickImageStarted,
    TResult Function(_UpdateNameStarted value)? updateNameStarted,
    TResult Function(_CurrentUserUpdated value)? currentUserUpdated,
    TResult Function(_DeleteAccountStarted value)? deleteAccountStarted,
    required TResult orElse(),
  }) {
    if (deleteAccountStarted != null) {
      return deleteAccountStarted(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountStarted implements AccountEvent {
  const factory _DeleteAccountStarted() = _$DeleteAccountStartedImpl;
}

/// @nodoc
mixin _$AccountState {
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
    required TResult Function() deleteAccountSuccess,
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
    TResult? Function()? deleteAccountSuccess,
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
    TResult Function()? deleteAccountSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateFailure value)? updateFailure,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name, String? phoneNumber, String? profilePictureUrl});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_$InitialImpl(
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
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
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

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
    required TResult Function() deleteAccountSuccess,
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
    TResult? Function()? deleteAccountSuccess,
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
    TResult Function()? deleteAccountSuccess,
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
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateFailure value)? updateFailure,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
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
      final String? profilePictureUrl}) = _$InitialImpl;

  String? get name;
  String? get phoneNumber;
  String? get profilePictureUrl;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInProgressImplCopyWith<$Res> {
  factory _$$UpdateInProgressImplCopyWith(_$UpdateInProgressImpl value,
          $Res Function(_$UpdateInProgressImpl) then) =
      __$$UpdateInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name, String? phoneNumber, String? profilePictureUrl});
}

/// @nodoc
class __$$UpdateInProgressImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$UpdateInProgressImpl>
    implements _$$UpdateInProgressImplCopyWith<$Res> {
  __$$UpdateInProgressImplCopyWithImpl(_$UpdateInProgressImpl _value,
      $Res Function(_$UpdateInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_$UpdateInProgressImpl(
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

class _$UpdateInProgressImpl implements _UpdateInProgress {
  const _$UpdateInProgressImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInProgressImpl &&
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
  _$$UpdateInProgressImplCopyWith<_$UpdateInProgressImpl> get copyWith =>
      __$$UpdateInProgressImplCopyWithImpl<_$UpdateInProgressImpl>(
          this, _$identity);

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
    required TResult Function() deleteAccountSuccess,
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
    TResult? Function()? deleteAccountSuccess,
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
    TResult Function()? deleteAccountSuccess,
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
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
  }) {
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateFailure value)? updateFailure,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
  }) {
    return updateInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
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
      required final String? profilePictureUrl}) = _$UpdateInProgressImpl;

  String? get name;
  String? get phoneNumber;
  String? get profilePictureUrl;
  @JsonKey(ignore: true)
  _$$UpdateInProgressImplCopyWith<_$UpdateInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFailureImplCopyWith<$Res> {
  factory _$$UpdateFailureImplCopyWith(
          _$UpdateFailureImpl value, $Res Function(_$UpdateFailureImpl) then) =
      __$$UpdateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? name,
      String? phoneNumber,
      String? profilePictureUrl,
      String errorMessage});
}

/// @nodoc
class __$$UpdateFailureImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$UpdateFailureImpl>
    implements _$$UpdateFailureImplCopyWith<$Res> {
  __$$UpdateFailureImplCopyWithImpl(
      _$UpdateFailureImpl _value, $Res Function(_$UpdateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? profilePictureUrl = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$UpdateFailureImpl(
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

class _$UpdateFailureImpl implements _UpdateFailure {
  const _$UpdateFailureImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFailureImpl &&
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
  _$$UpdateFailureImplCopyWith<_$UpdateFailureImpl> get copyWith =>
      __$$UpdateFailureImplCopyWithImpl<_$UpdateFailureImpl>(this, _$identity);

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
    required TResult Function() deleteAccountSuccess,
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
    TResult? Function()? deleteAccountSuccess,
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
    TResult Function()? deleteAccountSuccess,
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
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateFailure value)? updateFailure,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
  }) {
    return updateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
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
      required final String errorMessage}) = _$UpdateFailureImpl;

  String? get name;
  String? get phoneNumber;
  String? get profilePictureUrl;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$UpdateFailureImplCopyWith<_$UpdateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAccountSuccessImplCopyWith<$Res> {
  factory _$$DeleteAccountSuccessImplCopyWith(_$DeleteAccountSuccessImpl value,
          $Res Function(_$DeleteAccountSuccessImpl) then) =
      __$$DeleteAccountSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAccountSuccessImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$DeleteAccountSuccessImpl>
    implements _$$DeleteAccountSuccessImplCopyWith<$Res> {
  __$$DeleteAccountSuccessImplCopyWithImpl(_$DeleteAccountSuccessImpl _value,
      $Res Function(_$DeleteAccountSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAccountSuccessImpl implements _DeleteAccountSuccess {
  const _$DeleteAccountSuccessImpl();

  @override
  String toString() {
    return 'AccountState.deleteAccountSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
    required TResult Function() deleteAccountSuccess,
  }) {
    return deleteAccountSuccess();
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
    TResult? Function()? deleteAccountSuccess,
  }) {
    return deleteAccountSuccess?.call();
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
    TResult Function()? deleteAccountSuccess,
    required TResult orElse(),
  }) {
    if (deleteAccountSuccess != null) {
      return deleteAccountSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
  }) {
    return deleteAccountSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateFailure value)? updateFailure,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
  }) {
    return deleteAccountSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    required TResult orElse(),
  }) {
    if (deleteAccountSuccess != null) {
      return deleteAccountSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountSuccess implements AccountState {
  const factory _DeleteAccountSuccess() = _$DeleteAccountSuccessImpl;
}
