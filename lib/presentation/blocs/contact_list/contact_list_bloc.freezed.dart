// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshPulled,
    required TResult Function(Contact contact) selectedContactCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshPulled,
    TResult? Function(Contact contact)? selectedContactCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshPulled,
    TResult Function(Contact contact)? selectedContactCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshPulled value) refreshPulled,
    required TResult Function(_SelectedContactCalled value)
        selectedContactCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_SelectedContactCalled value)? selectedContactCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_SelectedContactCalled value)? selectedContactCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListEventCopyWith<$Res> {
  factory $ContactListEventCopyWith(
          ContactListEvent value, $Res Function(ContactListEvent) then) =
      _$ContactListEventCopyWithImpl<$Res, ContactListEvent>;
}

/// @nodoc
class _$ContactListEventCopyWithImpl<$Res, $Val extends ContactListEvent>
    implements $ContactListEventCopyWith<$Res> {
  _$ContactListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RefreshPulledCopyWith<$Res> {
  factory _$$_RefreshPulledCopyWith(
          _$_RefreshPulled value, $Res Function(_$_RefreshPulled) then) =
      __$$_RefreshPulledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshPulledCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$_RefreshPulled>
    implements _$$_RefreshPulledCopyWith<$Res> {
  __$$_RefreshPulledCopyWithImpl(
      _$_RefreshPulled _value, $Res Function(_$_RefreshPulled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshPulled implements _RefreshPulled {
  const _$_RefreshPulled();

  @override
  String toString() {
    return 'ContactListEvent.refreshPulled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshPulled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshPulled,
    required TResult Function(Contact contact) selectedContactCalled,
  }) {
    return refreshPulled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshPulled,
    TResult? Function(Contact contact)? selectedContactCalled,
  }) {
    return refreshPulled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshPulled,
    TResult Function(Contact contact)? selectedContactCalled,
    required TResult orElse(),
  }) {
    if (refreshPulled != null) {
      return refreshPulled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshPulled value) refreshPulled,
    required TResult Function(_SelectedContactCalled value)
        selectedContactCalled,
  }) {
    return refreshPulled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_SelectedContactCalled value)? selectedContactCalled,
  }) {
    return refreshPulled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_SelectedContactCalled value)? selectedContactCalled,
    required TResult orElse(),
  }) {
    if (refreshPulled != null) {
      return refreshPulled(this);
    }
    return orElse();
  }
}

abstract class _RefreshPulled implements ContactListEvent {
  const factory _RefreshPulled() = _$_RefreshPulled;
}

/// @nodoc
abstract class _$$_SelectedContactCalledCopyWith<$Res> {
  factory _$$_SelectedContactCalledCopyWith(_$_SelectedContactCalled value,
          $Res Function(_$_SelectedContactCalled) then) =
      __$$_SelectedContactCalledCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$_SelectedContactCalledCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$_SelectedContactCalled>
    implements _$$_SelectedContactCalledCopyWith<$Res> {
  __$$_SelectedContactCalledCopyWithImpl(_$_SelectedContactCalled _value,
      $Res Function(_$_SelectedContactCalled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$_SelectedContactCalled(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$_SelectedContactCalled implements _SelectedContactCalled {
  const _$_SelectedContactCalled(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactListEvent.selectedContactCalled(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedContactCalled &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedContactCalledCopyWith<_$_SelectedContactCalled> get copyWith =>
      __$$_SelectedContactCalledCopyWithImpl<_$_SelectedContactCalled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshPulled,
    required TResult Function(Contact contact) selectedContactCalled,
  }) {
    return selectedContactCalled(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshPulled,
    TResult? Function(Contact contact)? selectedContactCalled,
  }) {
    return selectedContactCalled?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshPulled,
    TResult Function(Contact contact)? selectedContactCalled,
    required TResult orElse(),
  }) {
    if (selectedContactCalled != null) {
      return selectedContactCalled(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshPulled value) refreshPulled,
    required TResult Function(_SelectedContactCalled value)
        selectedContactCalled,
  }) {
    return selectedContactCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_SelectedContactCalled value)? selectedContactCalled,
  }) {
    return selectedContactCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_SelectedContactCalled value)? selectedContactCalled,
    required TResult orElse(),
  }) {
    if (selectedContactCalled != null) {
      return selectedContactCalled(this);
    }
    return orElse();
  }
}

abstract class _SelectedContactCalled implements ContactListEvent {
  const factory _SelectedContactCalled(final Contact contact) =
      _$_SelectedContactCalled;

  Contact get contact;
  @JsonKey(ignore: true)
  _$$_SelectedContactCalledCopyWith<_$_SelectedContactCalled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactListState {
  List<Contact> get contacts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) initial,
    required TResult Function(List<Contact> contacts) loadInProgress,
    required TResult Function(List<Contact> contacts) loadSuccess,
    required TResult Function(Failure failure, List<Contact> contacts)
        loadFailure,
    required TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)
        startVideoCallFailure,
    required TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)
        startVideoCallSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? initial,
    TResult? Function(List<Contact> contacts)? loadInProgress,
    TResult? Function(List<Contact> contacts)? loadSuccess,
    TResult? Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult? Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult? Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? initial,
    TResult Function(List<Contact> contacts)? loadInProgress,
    TResult Function(List<Contact> contacts)? loadSuccess,
    TResult Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_StartVideoCallFailure value)
        startVideoCallFailure,
    required TResult Function(_StartVideoCallSuccess value)
        startVideoCallSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult? Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactListStateCopyWith<ContactListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListStateCopyWith<$Res> {
  factory $ContactListStateCopyWith(
          ContactListState value, $Res Function(ContactListState) then) =
      _$ContactListStateCopyWithImpl<$Res, ContactListState>;
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class _$ContactListStateCopyWithImpl<$Res, $Val extends ContactListState>
    implements $ContactListStateCopyWith<$Res> {
  _$ContactListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_value.copyWith(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$_Initial(
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial([final List<Contact> contacts = const []])
      : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  @JsonKey()
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactListState.initial(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) initial,
    required TResult Function(List<Contact> contacts) loadInProgress,
    required TResult Function(List<Contact> contacts) loadSuccess,
    required TResult Function(Failure failure, List<Contact> contacts)
        loadFailure,
    required TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)
        startVideoCallFailure,
    required TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)
        startVideoCallSuccess,
  }) {
    return initial(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? initial,
    TResult? Function(List<Contact> contacts)? loadInProgress,
    TResult? Function(List<Contact> contacts)? loadSuccess,
    TResult? Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult? Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult? Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
  }) {
    return initial?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? initial,
    TResult Function(List<Contact> contacts)? loadInProgress,
    TResult Function(List<Contact> contacts)? loadSuccess,
    TResult Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_StartVideoCallFailure value)
        startVideoCallFailure,
    required TResult Function(_StartVideoCallSuccess value)
        startVideoCallSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult? Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ContactListState {
  const factory _Initial([final List<Contact> contacts]) = _$_Initial;

  @override
  List<Contact> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$_LoadInProgress(
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress(final List<Contact> contacts) : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactListState.loadInProgress(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) initial,
    required TResult Function(List<Contact> contacts) loadInProgress,
    required TResult Function(List<Contact> contacts) loadSuccess,
    required TResult Function(Failure failure, List<Contact> contacts)
        loadFailure,
    required TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)
        startVideoCallFailure,
    required TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)
        startVideoCallSuccess,
  }) {
    return loadInProgress(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? initial,
    TResult? Function(List<Contact> contacts)? loadInProgress,
    TResult? Function(List<Contact> contacts)? loadSuccess,
    TResult? Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult? Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult? Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
  }) {
    return loadInProgress?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? initial,
    TResult Function(List<Contact> contacts)? loadInProgress,
    TResult Function(List<Contact> contacts)? loadSuccess,
    TResult Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_StartVideoCallFailure value)
        startVideoCallFailure,
    required TResult Function(_StartVideoCallSuccess value)
        startVideoCallSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult? Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ContactListState {
  const factory _LoadInProgress(final List<Contact> contacts) =
      _$_LoadInProgress;

  @override
  List<Contact> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$_LoadSuccess(
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(final List<Contact> contacts) : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactListState.loadSuccess(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) initial,
    required TResult Function(List<Contact> contacts) loadInProgress,
    required TResult Function(List<Contact> contacts) loadSuccess,
    required TResult Function(Failure failure, List<Contact> contacts)
        loadFailure,
    required TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)
        startVideoCallFailure,
    required TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)
        startVideoCallSuccess,
  }) {
    return loadSuccess(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? initial,
    TResult? Function(List<Contact> contacts)? loadInProgress,
    TResult? Function(List<Contact> contacts)? loadSuccess,
    TResult? Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult? Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult? Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
  }) {
    return loadSuccess?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? initial,
    TResult Function(List<Contact> contacts)? loadInProgress,
    TResult Function(List<Contact> contacts)? loadSuccess,
    TResult Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_StartVideoCallFailure value)
        startVideoCallFailure,
    required TResult Function(_StartVideoCallSuccess value)
        startVideoCallSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult? Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ContactListState {
  const factory _LoadSuccess(final List<Contact> contacts) = _$_LoadSuccess;

  @override
  List<Contact> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Failure failure, List<Contact> contacts});
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? contacts = null,
  }) {
    return _then(_$_LoadFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure, [final List<Contact> contacts = const []])
      : _contacts = contacts;

  @override
  final Failure failure;
  final List<Contact> _contacts;
  @override
  @JsonKey()
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactListState.loadFailure(failure: $failure, contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, failure, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) initial,
    required TResult Function(List<Contact> contacts) loadInProgress,
    required TResult Function(List<Contact> contacts) loadSuccess,
    required TResult Function(Failure failure, List<Contact> contacts)
        loadFailure,
    required TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)
        startVideoCallFailure,
    required TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)
        startVideoCallSuccess,
  }) {
    return loadFailure(failure, contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? initial,
    TResult? Function(List<Contact> contacts)? loadInProgress,
    TResult? Function(List<Contact> contacts)? loadSuccess,
    TResult? Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult? Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult? Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
  }) {
    return loadFailure?.call(failure, contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? initial,
    TResult Function(List<Contact> contacts)? loadInProgress,
    TResult Function(List<Contact> contacts)? loadSuccess,
    TResult Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure, contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_StartVideoCallFailure value)
        startVideoCallFailure,
    required TResult Function(_StartVideoCallSuccess value)
        startVideoCallSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult? Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ContactListState {
  const factory _LoadFailure(final Failure failure,
      [final List<Contact> contacts]) = _$_LoadFailure;

  Failure get failure;
  @override
  List<Contact> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartVideoCallFailureCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$_StartVideoCallFailureCopyWith(_$_StartVideoCallFailure value,
          $Res Function(_$_StartVideoCallFailure) then) =
      __$$_StartVideoCallFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage, DateTime lastTryDate, List<Contact> contacts});
}

/// @nodoc
class __$$_StartVideoCallFailureCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_StartVideoCallFailure>
    implements _$$_StartVideoCallFailureCopyWith<$Res> {
  __$$_StartVideoCallFailureCopyWithImpl(_$_StartVideoCallFailure _value,
      $Res Function(_$_StartVideoCallFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? lastTryDate = null,
    Object? contacts = null,
  }) {
    return _then(_$_StartVideoCallFailure(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastTryDate
          ? _value.lastTryDate
          : lastTryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_StartVideoCallFailure implements _StartVideoCallFailure {
  const _$_StartVideoCallFailure(
      this.errorMessage, this.lastTryDate, final List<Contact> contacts)
      : _contacts = contacts;

  @override
  final String errorMessage;
  @override
  final DateTime lastTryDate;
  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactListState.startVideoCallFailure(errorMessage: $errorMessage, lastTryDate: $lastTryDate, contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartVideoCallFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.lastTryDate, lastTryDate) ||
                other.lastTryDate == lastTryDate) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, lastTryDate,
      const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartVideoCallFailureCopyWith<_$_StartVideoCallFailure> get copyWith =>
      __$$_StartVideoCallFailureCopyWithImpl<_$_StartVideoCallFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) initial,
    required TResult Function(List<Contact> contacts) loadInProgress,
    required TResult Function(List<Contact> contacts) loadSuccess,
    required TResult Function(Failure failure, List<Contact> contacts)
        loadFailure,
    required TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)
        startVideoCallFailure,
    required TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)
        startVideoCallSuccess,
  }) {
    return startVideoCallFailure(errorMessage, lastTryDate, contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? initial,
    TResult? Function(List<Contact> contacts)? loadInProgress,
    TResult? Function(List<Contact> contacts)? loadSuccess,
    TResult? Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult? Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult? Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
  }) {
    return startVideoCallFailure?.call(errorMessage, lastTryDate, contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? initial,
    TResult Function(List<Contact> contacts)? loadInProgress,
    TResult Function(List<Contact> contacts)? loadSuccess,
    TResult Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (startVideoCallFailure != null) {
      return startVideoCallFailure(errorMessage, lastTryDate, contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_StartVideoCallFailure value)
        startVideoCallFailure,
    required TResult Function(_StartVideoCallSuccess value)
        startVideoCallSuccess,
  }) {
    return startVideoCallFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult? Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
  }) {
    return startVideoCallFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (startVideoCallFailure != null) {
      return startVideoCallFailure(this);
    }
    return orElse();
  }
}

abstract class _StartVideoCallFailure implements ContactListState {
  const factory _StartVideoCallFailure(
      final String errorMessage,
      final DateTime lastTryDate,
      final List<Contact> contacts) = _$_StartVideoCallFailure;

  String get errorMessage;
  DateTime get lastTryDate;
  @override
  List<Contact> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_StartVideoCallFailureCopyWith<_$_StartVideoCallFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartVideoCallSuccessCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$_StartVideoCallSuccessCopyWith(_$_StartVideoCallSuccess value,
          $Res Function(_$_StartVideoCallSuccess) then) =
      __$$_StartVideoCallSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Contact> contacts, Contact selectedContact, DateTime calledAt});
}

/// @nodoc
class __$$_StartVideoCallSuccessCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$_StartVideoCallSuccess>
    implements _$$_StartVideoCallSuccessCopyWith<$Res> {
  __$$_StartVideoCallSuccessCopyWithImpl(_$_StartVideoCallSuccess _value,
      $Res Function(_$_StartVideoCallSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? selectedContact = null,
    Object? calledAt = null,
  }) {
    return _then(_$_StartVideoCallSuccess(
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      selectedContact: null == selectedContact
          ? _value.selectedContact
          : selectedContact // ignore: cast_nullable_to_non_nullable
              as Contact,
      calledAt: null == calledAt
          ? _value.calledAt
          : calledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_StartVideoCallSuccess implements _StartVideoCallSuccess {
  const _$_StartVideoCallSuccess(final List<Contact> contacts,
      {required this.selectedContact, required this.calledAt})
      : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  final Contact selectedContact;
  @override
  final DateTime calledAt;

  @override
  String toString() {
    return 'ContactListState.startVideoCallSuccess(contacts: $contacts, selectedContact: $selectedContact, calledAt: $calledAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartVideoCallSuccess &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.selectedContact, selectedContact) ||
                other.selectedContact == selectedContact) &&
            (identical(other.calledAt, calledAt) ||
                other.calledAt == calledAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contacts),
      selectedContact,
      calledAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartVideoCallSuccessCopyWith<_$_StartVideoCallSuccess> get copyWith =>
      __$$_StartVideoCallSuccessCopyWithImpl<_$_StartVideoCallSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) initial,
    required TResult Function(List<Contact> contacts) loadInProgress,
    required TResult Function(List<Contact> contacts) loadSuccess,
    required TResult Function(Failure failure, List<Contact> contacts)
        loadFailure,
    required TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)
        startVideoCallFailure,
    required TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)
        startVideoCallSuccess,
  }) {
    return startVideoCallSuccess(contacts, selectedContact, calledAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? initial,
    TResult? Function(List<Contact> contacts)? loadInProgress,
    TResult? Function(List<Contact> contacts)? loadSuccess,
    TResult? Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult? Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult? Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
  }) {
    return startVideoCallSuccess?.call(contacts, selectedContact, calledAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? initial,
    TResult Function(List<Contact> contacts)? loadInProgress,
    TResult Function(List<Contact> contacts)? loadSuccess,
    TResult Function(Failure failure, List<Contact> contacts)? loadFailure,
    TResult Function(
            String errorMessage, DateTime lastTryDate, List<Contact> contacts)?
        startVideoCallFailure,
    TResult Function(
            List<Contact> contacts, Contact selectedContact, DateTime calledAt)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (startVideoCallSuccess != null) {
      return startVideoCallSuccess(contacts, selectedContact, calledAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_StartVideoCallFailure value)
        startVideoCallFailure,
    required TResult Function(_StartVideoCallSuccess value)
        startVideoCallSuccess,
  }) {
    return startVideoCallSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult? Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
  }) {
    return startVideoCallSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_StartVideoCallFailure value)? startVideoCallFailure,
    TResult Function(_StartVideoCallSuccess value)? startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (startVideoCallSuccess != null) {
      return startVideoCallSuccess(this);
    }
    return orElse();
  }
}

abstract class _StartVideoCallSuccess implements ContactListState {
  const factory _StartVideoCallSuccess(final List<Contact> contacts,
      {required final Contact selectedContact,
      required final DateTime calledAt}) = _$_StartVideoCallSuccess;

  @override
  List<Contact> get contacts;
  Contact get selectedContact;
  DateTime get calledAt;
  @override
  @JsonKey(ignore: true)
  _$$_StartVideoCallSuccessCopyWith<_$_StartVideoCallSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
