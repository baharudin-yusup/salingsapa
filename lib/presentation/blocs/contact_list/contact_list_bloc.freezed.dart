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
    required TResult Function() requestPermissionStarted,
    required TResult Function(Contact contact) selectedContactCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshPulled,
    TResult? Function()? requestPermissionStarted,
    TResult? Function(Contact contact)? selectedContactCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshPulled,
    TResult Function()? requestPermissionStarted,
    TResult Function(Contact contact)? selectedContactCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshPulled value) refreshPulled,
    required TResult Function(_RequestPermissionStarted value)
        requestPermissionStarted,
    required TResult Function(_SelectedContactCalled value)
        selectedContactCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_RequestPermissionStarted value)?
        requestPermissionStarted,
    TResult? Function(_SelectedContactCalled value)? selectedContactCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_RequestPermissionStarted value)? requestPermissionStarted,
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
abstract class _$$RefreshPulledImplCopyWith<$Res> {
  factory _$$RefreshPulledImplCopyWith(
          _$RefreshPulledImpl value, $Res Function(_$RefreshPulledImpl) then) =
      __$$RefreshPulledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshPulledImplCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$RefreshPulledImpl>
    implements _$$RefreshPulledImplCopyWith<$Res> {
  __$$RefreshPulledImplCopyWithImpl(
      _$RefreshPulledImpl _value, $Res Function(_$RefreshPulledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshPulledImpl implements _RefreshPulled {
  const _$RefreshPulledImpl();

  @override
  String toString() {
    return 'ContactListEvent.refreshPulled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshPulledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshPulled,
    required TResult Function() requestPermissionStarted,
    required TResult Function(Contact contact) selectedContactCalled,
  }) {
    return refreshPulled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshPulled,
    TResult? Function()? requestPermissionStarted,
    TResult? Function(Contact contact)? selectedContactCalled,
  }) {
    return refreshPulled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshPulled,
    TResult Function()? requestPermissionStarted,
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
    required TResult Function(_RequestPermissionStarted value)
        requestPermissionStarted,
    required TResult Function(_SelectedContactCalled value)
        selectedContactCalled,
  }) {
    return refreshPulled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_RequestPermissionStarted value)?
        requestPermissionStarted,
    TResult? Function(_SelectedContactCalled value)? selectedContactCalled,
  }) {
    return refreshPulled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_RequestPermissionStarted value)? requestPermissionStarted,
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
  const factory _RefreshPulled() = _$RefreshPulledImpl;
}

/// @nodoc
abstract class _$$RequestPermissionStartedImplCopyWith<$Res> {
  factory _$$RequestPermissionStartedImplCopyWith(
          _$RequestPermissionStartedImpl value,
          $Res Function(_$RequestPermissionStartedImpl) then) =
      __$$RequestPermissionStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestPermissionStartedImplCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$RequestPermissionStartedImpl>
    implements _$$RequestPermissionStartedImplCopyWith<$Res> {
  __$$RequestPermissionStartedImplCopyWithImpl(
      _$RequestPermissionStartedImpl _value,
      $Res Function(_$RequestPermissionStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestPermissionStartedImpl implements _RequestPermissionStarted {
  const _$RequestPermissionStartedImpl();

  @override
  String toString() {
    return 'ContactListEvent.requestPermissionStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPermissionStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshPulled,
    required TResult Function() requestPermissionStarted,
    required TResult Function(Contact contact) selectedContactCalled,
  }) {
    return requestPermissionStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshPulled,
    TResult? Function()? requestPermissionStarted,
    TResult? Function(Contact contact)? selectedContactCalled,
  }) {
    return requestPermissionStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshPulled,
    TResult Function()? requestPermissionStarted,
    TResult Function(Contact contact)? selectedContactCalled,
    required TResult orElse(),
  }) {
    if (requestPermissionStarted != null) {
      return requestPermissionStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshPulled value) refreshPulled,
    required TResult Function(_RequestPermissionStarted value)
        requestPermissionStarted,
    required TResult Function(_SelectedContactCalled value)
        selectedContactCalled,
  }) {
    return requestPermissionStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_RequestPermissionStarted value)?
        requestPermissionStarted,
    TResult? Function(_SelectedContactCalled value)? selectedContactCalled,
  }) {
    return requestPermissionStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_RequestPermissionStarted value)? requestPermissionStarted,
    TResult Function(_SelectedContactCalled value)? selectedContactCalled,
    required TResult orElse(),
  }) {
    if (requestPermissionStarted != null) {
      return requestPermissionStarted(this);
    }
    return orElse();
  }
}

abstract class _RequestPermissionStarted implements ContactListEvent {
  const factory _RequestPermissionStarted() = _$RequestPermissionStartedImpl;
}

/// @nodoc
abstract class _$$SelectedContactCalledImplCopyWith<$Res> {
  factory _$$SelectedContactCalledImplCopyWith(
          _$SelectedContactCalledImpl value,
          $Res Function(_$SelectedContactCalledImpl) then) =
      __$$SelectedContactCalledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});
}

/// @nodoc
class __$$SelectedContactCalledImplCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res, _$SelectedContactCalledImpl>
    implements _$$SelectedContactCalledImplCopyWith<$Res> {
  __$$SelectedContactCalledImplCopyWithImpl(_$SelectedContactCalledImpl _value,
      $Res Function(_$SelectedContactCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$SelectedContactCalledImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$SelectedContactCalledImpl implements _SelectedContactCalled {
  const _$SelectedContactCalledImpl(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactListEvent.selectedContactCalled(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedContactCalledImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedContactCalledImplCopyWith<_$SelectedContactCalledImpl>
      get copyWith => __$$SelectedContactCalledImplCopyWithImpl<
          _$SelectedContactCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshPulled,
    required TResult Function() requestPermissionStarted,
    required TResult Function(Contact contact) selectedContactCalled,
  }) {
    return selectedContactCalled(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshPulled,
    TResult? Function()? requestPermissionStarted,
    TResult? Function(Contact contact)? selectedContactCalled,
  }) {
    return selectedContactCalled?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshPulled,
    TResult Function()? requestPermissionStarted,
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
    required TResult Function(_RequestPermissionStarted value)
        requestPermissionStarted,
    required TResult Function(_SelectedContactCalled value)
        selectedContactCalled,
  }) {
    return selectedContactCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_RequestPermissionStarted value)?
        requestPermissionStarted,
    TResult? Function(_SelectedContactCalled value)? selectedContactCalled,
  }) {
    return selectedContactCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_RequestPermissionStarted value)? requestPermissionStarted,
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
      _$SelectedContactCalledImpl;

  Contact get contact;
  @JsonKey(ignore: true)
  _$$SelectedContactCalledImplCopyWith<_$SelectedContactCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactListState {
  List<Contact> get contacts => throw _privateConstructorUsedError;
  bool? get isPermissionValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts, bool? isPermissionValid)
        initial,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadInProgress,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadSuccess,
    required TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)
        loadFailure,
    required TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)
        startVideoCallFailure,
    required TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)
        startVideoCallSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult? Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult? Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult? Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
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
  $Res call({List<Contact> contacts, bool isPermissionValid});
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
    Object? isPermissionValid = null,
  }) {
    return _then(_value.copyWith(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      isPermissionValid: null == isPermissionValid
          ? _value.isPermissionValid!
          : isPermissionValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> contacts, bool? isPermissionValid});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? isPermissionValid = freezed,
  }) {
    return _then(_$InitialImpl(
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      freezed == isPermissionValid
          ? _value.isPermissionValid
          : isPermissionValid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      [final List<Contact> contacts = const [], this.isPermissionValid = null])
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
  @JsonKey()
  final bool? isPermissionValid;

  @override
  String toString() {
    return 'ContactListState.initial(contacts: $contacts, isPermissionValid: $isPermissionValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.isPermissionValid, isPermissionValid) ||
                other.isPermissionValid == isPermissionValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_contacts), isPermissionValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts, bool? isPermissionValid)
        initial,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadInProgress,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadSuccess,
    required TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)
        loadFailure,
    required TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)
        startVideoCallFailure,
    required TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)
        startVideoCallSuccess,
  }) {
    return initial(contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult? Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult? Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult? Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
  }) {
    return initial?.call(contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(contacts, isPermissionValid);
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
  const factory _Initial(
      [final List<Contact> contacts,
      final bool? isPermissionValid]) = _$InitialImpl;

  @override
  List<Contact> get contacts;
  @override
  bool? get isPermissionValid;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> contacts, bool isPermissionValid});
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? isPermissionValid = null,
  }) {
    return _then(_$LoadInProgressImpl(
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      null == isPermissionValid
          ? _value.isPermissionValid
          : isPermissionValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl(
      final List<Contact> contacts, this.isPermissionValid)
      : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  final bool isPermissionValid;

  @override
  String toString() {
    return 'ContactListState.loadInProgress(contacts: $contacts, isPermissionValid: $isPermissionValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.isPermissionValid, isPermissionValid) ||
                other.isPermissionValid == isPermissionValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_contacts), isPermissionValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      __$$LoadInProgressImplCopyWithImpl<_$LoadInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts, bool? isPermissionValid)
        initial,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadInProgress,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadSuccess,
    required TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)
        loadFailure,
    required TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)
        startVideoCallFailure,
    required TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)
        startVideoCallSuccess,
  }) {
    return loadInProgress(contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult? Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult? Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult? Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
  }) {
    return loadInProgress?.call(contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(contacts, isPermissionValid);
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
  const factory _LoadInProgress(
          final List<Contact> contacts, final bool isPermissionValid) =
      _$LoadInProgressImpl;

  @override
  List<Contact> get contacts;
  @override
  bool get isPermissionValid;
  @override
  @JsonKey(ignore: true)
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> contacts, bool isPermissionValid});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? isPermissionValid = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      null == isPermissionValid
          ? _value.isPermissionValid
          : isPermissionValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(final List<Contact> contacts, this.isPermissionValid)
      : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  final bool isPermissionValid;

  @override
  String toString() {
    return 'ContactListState.loadSuccess(contacts: $contacts, isPermissionValid: $isPermissionValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.isPermissionValid, isPermissionValid) ||
                other.isPermissionValid == isPermissionValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_contacts), isPermissionValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts, bool? isPermissionValid)
        initial,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadInProgress,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadSuccess,
    required TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)
        loadFailure,
    required TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)
        startVideoCallFailure,
    required TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)
        startVideoCallSuccess,
  }) {
    return loadSuccess(contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult? Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult? Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult? Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
  }) {
    return loadSuccess?.call(contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(contacts, isPermissionValid);
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
  const factory _LoadSuccess(
          final List<Contact> contacts, final bool isPermissionValid) =
      _$LoadSuccessImpl;

  @override
  List<Contact> get contacts;
  @override
  bool get isPermissionValid;
  @override
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Failure failure, List<Contact> contacts, bool isPermissionValid});
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? contacts = null,
    Object? isPermissionValid = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      isPermissionValid: null == isPermissionValid
          ? _value.isPermissionValid
          : isPermissionValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.failure,
      {required final List<Contact> contacts, required this.isPermissionValid})
      : _contacts = contacts;

  @override
  final Failure failure;
  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  final bool isPermissionValid;

  @override
  String toString() {
    return 'ContactListState.loadFailure(failure: $failure, contacts: $contacts, isPermissionValid: $isPermissionValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.isPermissionValid, isPermissionValid) ||
                other.isPermissionValid == isPermissionValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure,
      const DeepCollectionEquality().hash(_contacts), isPermissionValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts, bool? isPermissionValid)
        initial,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadInProgress,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadSuccess,
    required TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)
        loadFailure,
    required TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)
        startVideoCallFailure,
    required TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)
        startVideoCallSuccess,
  }) {
    return loadFailure(failure, contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult? Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult? Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult? Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
  }) {
    return loadFailure?.call(failure, contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure, contacts, isPermissionValid);
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
      {required final List<Contact> contacts,
      required final bool isPermissionValid}) = _$LoadFailureImpl;

  Failure get failure;
  @override
  List<Contact> get contacts;
  @override
  bool get isPermissionValid;
  @override
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartVideoCallFailureImplCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$StartVideoCallFailureImplCopyWith(
          _$StartVideoCallFailureImpl value,
          $Res Function(_$StartVideoCallFailureImpl) then) =
      __$$StartVideoCallFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      DateTime lastTryDate,
      List<Contact> contacts,
      bool isPermissionValid});
}

/// @nodoc
class __$$StartVideoCallFailureImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$StartVideoCallFailureImpl>
    implements _$$StartVideoCallFailureImplCopyWith<$Res> {
  __$$StartVideoCallFailureImplCopyWithImpl(_$StartVideoCallFailureImpl _value,
      $Res Function(_$StartVideoCallFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? lastTryDate = null,
    Object? contacts = null,
    Object? isPermissionValid = null,
  }) {
    return _then(_$StartVideoCallFailureImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastTryDate: null == lastTryDate
          ? _value.lastTryDate
          : lastTryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      isPermissionValid: null == isPermissionValid
          ? _value.isPermissionValid
          : isPermissionValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartVideoCallFailureImpl implements _StartVideoCallFailure {
  const _$StartVideoCallFailureImpl(
      {required this.errorMessage,
      required this.lastTryDate,
      required final List<Contact> contacts,
      required this.isPermissionValid})
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
  final bool isPermissionValid;

  @override
  String toString() {
    return 'ContactListState.startVideoCallFailure(errorMessage: $errorMessage, lastTryDate: $lastTryDate, contacts: $contacts, isPermissionValid: $isPermissionValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartVideoCallFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.lastTryDate, lastTryDate) ||
                other.lastTryDate == lastTryDate) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.isPermissionValid, isPermissionValid) ||
                other.isPermissionValid == isPermissionValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, lastTryDate,
      const DeepCollectionEquality().hash(_contacts), isPermissionValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartVideoCallFailureImplCopyWith<_$StartVideoCallFailureImpl>
      get copyWith => __$$StartVideoCallFailureImplCopyWithImpl<
          _$StartVideoCallFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts, bool? isPermissionValid)
        initial,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadInProgress,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadSuccess,
    required TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)
        loadFailure,
    required TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)
        startVideoCallFailure,
    required TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)
        startVideoCallSuccess,
  }) {
    return startVideoCallFailure(
        errorMessage, lastTryDate, contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult? Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult? Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult? Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
  }) {
    return startVideoCallFailure?.call(
        errorMessage, lastTryDate, contacts, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (startVideoCallFailure != null) {
      return startVideoCallFailure(
          errorMessage, lastTryDate, contacts, isPermissionValid);
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
      {required final String errorMessage,
      required final DateTime lastTryDate,
      required final List<Contact> contacts,
      required final bool isPermissionValid}) = _$StartVideoCallFailureImpl;

  String get errorMessage;
  DateTime get lastTryDate;
  @override
  List<Contact> get contacts;
  @override
  bool get isPermissionValid;
  @override
  @JsonKey(ignore: true)
  _$$StartVideoCallFailureImplCopyWith<_$StartVideoCallFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartVideoCallSuccessImplCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$StartVideoCallSuccessImplCopyWith(
          _$StartVideoCallSuccessImpl value,
          $Res Function(_$StartVideoCallSuccessImpl) then) =
      __$$StartVideoCallSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Contact> contacts,
      Contact selectedContact,
      DateTime calledAt,
      bool isPermissionValid});
}

/// @nodoc
class __$$StartVideoCallSuccessImplCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res, _$StartVideoCallSuccessImpl>
    implements _$$StartVideoCallSuccessImplCopyWith<$Res> {
  __$$StartVideoCallSuccessImplCopyWithImpl(_$StartVideoCallSuccessImpl _value,
      $Res Function(_$StartVideoCallSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? selectedContact = null,
    Object? calledAt = null,
    Object? isPermissionValid = null,
  }) {
    return _then(_$StartVideoCallSuccessImpl(
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
      isPermissionValid: null == isPermissionValid
          ? _value.isPermissionValid
          : isPermissionValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartVideoCallSuccessImpl implements _StartVideoCallSuccess {
  const _$StartVideoCallSuccessImpl(final List<Contact> contacts,
      {required this.selectedContact,
      required this.calledAt,
      required this.isPermissionValid})
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
  final bool isPermissionValid;

  @override
  String toString() {
    return 'ContactListState.startVideoCallSuccess(contacts: $contacts, selectedContact: $selectedContact, calledAt: $calledAt, isPermissionValid: $isPermissionValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartVideoCallSuccessImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.selectedContact, selectedContact) ||
                other.selectedContact == selectedContact) &&
            (identical(other.calledAt, calledAt) ||
                other.calledAt == calledAt) &&
            (identical(other.isPermissionValid, isPermissionValid) ||
                other.isPermissionValid == isPermissionValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contacts),
      selectedContact,
      calledAt,
      isPermissionValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartVideoCallSuccessImplCopyWith<_$StartVideoCallSuccessImpl>
      get copyWith => __$$StartVideoCallSuccessImplCopyWithImpl<
          _$StartVideoCallSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts, bool? isPermissionValid)
        initial,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadInProgress,
    required TResult Function(List<Contact> contacts, bool isPermissionValid)
        loadSuccess,
    required TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)
        loadFailure,
    required TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)
        startVideoCallFailure,
    required TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)
        startVideoCallSuccess,
  }) {
    return startVideoCallSuccess(
        contacts, selectedContact, calledAt, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult? Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult? Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult? Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult? Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
  }) {
    return startVideoCallSuccess?.call(
        contacts, selectedContact, calledAt, isPermissionValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts, bool? isPermissionValid)? initial,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadInProgress,
    TResult Function(List<Contact> contacts, bool isPermissionValid)?
        loadSuccess,
    TResult Function(
            Failure failure, List<Contact> contacts, bool isPermissionValid)?
        loadFailure,
    TResult Function(String errorMessage, DateTime lastTryDate,
            List<Contact> contacts, bool isPermissionValid)?
        startVideoCallFailure,
    TResult Function(List<Contact> contacts, Contact selectedContact,
            DateTime calledAt, bool isPermissionValid)?
        startVideoCallSuccess,
    required TResult orElse(),
  }) {
    if (startVideoCallSuccess != null) {
      return startVideoCallSuccess(
          contacts, selectedContact, calledAt, isPermissionValid);
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
      required final DateTime calledAt,
      required final bool isPermissionValid}) = _$StartVideoCallSuccessImpl;

  @override
  List<Contact> get contacts;
  Contact get selectedContact;
  DateTime get calledAt;
  @override
  bool get isPermissionValid;
  @override
  @JsonKey(ignore: true)
  _$$StartVideoCallSuccessImplCopyWith<_$StartVideoCallSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
