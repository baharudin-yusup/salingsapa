// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecentCallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshPulled,
    required TResult Function() newCallTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshPulled,
    TResult? Function()? newCallTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshPulled,
    TResult Function()? newCallTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshPulled value) refreshPulled,
    required TResult Function(_NewCallTapped value) newCallTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_NewCallTapped value)? newCallTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_NewCallTapped value)? newCallTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentCallEventCopyWith<$Res> {
  factory $RecentCallEventCopyWith(
          RecentCallEvent value, $Res Function(RecentCallEvent) then) =
      _$RecentCallEventCopyWithImpl<$Res, RecentCallEvent>;
}

/// @nodoc
class _$RecentCallEventCopyWithImpl<$Res, $Val extends RecentCallEvent>
    implements $RecentCallEventCopyWith<$Res> {
  _$RecentCallEventCopyWithImpl(this._value, this._then);

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
    extends _$RecentCallEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'RecentCallEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshPulled,
    required TResult Function() newCallTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshPulled,
    TResult? Function()? newCallTapped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshPulled,
    TResult Function()? newCallTapped,
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
    required TResult Function(_RefreshPulled value) refreshPulled,
    required TResult Function(_NewCallTapped value) newCallTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_NewCallTapped value)? newCallTapped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_NewCallTapped value)? newCallTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RecentCallEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RefreshPulledImplCopyWith<$Res> {
  factory _$$RefreshPulledImplCopyWith(
          _$RefreshPulledImpl value, $Res Function(_$RefreshPulledImpl) then) =
      __$$RefreshPulledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshPulledImplCopyWithImpl<$Res>
    extends _$RecentCallEventCopyWithImpl<$Res, _$RefreshPulledImpl>
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
    return 'RecentCallEvent.refreshPulled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshPulledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshPulled,
    required TResult Function() newCallTapped,
  }) {
    return refreshPulled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshPulled,
    TResult? Function()? newCallTapped,
  }) {
    return refreshPulled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshPulled,
    TResult Function()? newCallTapped,
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
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshPulled value) refreshPulled,
    required TResult Function(_NewCallTapped value) newCallTapped,
  }) {
    return refreshPulled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_NewCallTapped value)? newCallTapped,
  }) {
    return refreshPulled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_NewCallTapped value)? newCallTapped,
    required TResult orElse(),
  }) {
    if (refreshPulled != null) {
      return refreshPulled(this);
    }
    return orElse();
  }
}

abstract class _RefreshPulled implements RecentCallEvent {
  const factory _RefreshPulled() = _$RefreshPulledImpl;
}

/// @nodoc
abstract class _$$NewCallTappedImplCopyWith<$Res> {
  factory _$$NewCallTappedImplCopyWith(
          _$NewCallTappedImpl value, $Res Function(_$NewCallTappedImpl) then) =
      __$$NewCallTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewCallTappedImplCopyWithImpl<$Res>
    extends _$RecentCallEventCopyWithImpl<$Res, _$NewCallTappedImpl>
    implements _$$NewCallTappedImplCopyWith<$Res> {
  __$$NewCallTappedImplCopyWithImpl(
      _$NewCallTappedImpl _value, $Res Function(_$NewCallTappedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewCallTappedImpl implements _NewCallTapped {
  const _$NewCallTappedImpl();

  @override
  String toString() {
    return 'RecentCallEvent.newCallTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewCallTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshPulled,
    required TResult Function() newCallTapped,
  }) {
    return newCallTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshPulled,
    TResult? Function()? newCallTapped,
  }) {
    return newCallTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshPulled,
    TResult Function()? newCallTapped,
    required TResult orElse(),
  }) {
    if (newCallTapped != null) {
      return newCallTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshPulled value) refreshPulled,
    required TResult Function(_NewCallTapped value) newCallTapped,
  }) {
    return newCallTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshPulled value)? refreshPulled,
    TResult? Function(_NewCallTapped value)? newCallTapped,
  }) {
    return newCallTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshPulled value)? refreshPulled,
    TResult Function(_NewCallTapped value)? newCallTapped,
    required TResult orElse(),
  }) {
    if (newCallTapped != null) {
      return newCallTapped(this);
    }
    return orElse();
  }
}

abstract class _NewCallTapped implements RecentCallEvent {
  const factory _NewCallTapped() = _$NewCallTappedImpl;
}

/// @nodoc
mixin _$RecentCallState {
  Stream<Either<Failure, List<Room>>> get invitations =>
      throw _privateConstructorUsedError;
  List<CallInfo> get calls => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        initial,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshInProgress,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshSuccess,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)
        refreshFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RefreshInProgress value) refreshInProgress,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_RefreshFailure value) refreshFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RefreshInProgress value)? refreshInProgress,
    TResult? Function(_RefreshSuccess value)? refreshSuccess,
    TResult? Function(_RefreshFailure value)? refreshFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshInProgress value)? refreshInProgress,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_RefreshFailure value)? refreshFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentCallStateCopyWith<RecentCallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentCallStateCopyWith<$Res> {
  factory $RecentCallStateCopyWith(
          RecentCallState value, $Res Function(RecentCallState) then) =
      _$RecentCallStateCopyWithImpl<$Res, RecentCallState>;
  @useResult
  $Res call(
      {Stream<Either<Failure, List<Room>>> invitations, List<CallInfo> calls});
}

/// @nodoc
class _$RecentCallStateCopyWithImpl<$Res, $Val extends RecentCallState>
    implements $RecentCallStateCopyWith<$Res> {
  _$RecentCallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitations = null,
    Object? calls = null,
  }) {
    return _then(_value.copyWith(
      invitations: null == invitations
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as Stream<Either<Failure, List<Room>>>,
      calls: null == calls
          ? _value.calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<CallInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RecentCallStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Stream<Either<Failure, List<Room>>> invitations, List<CallInfo> calls});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RecentCallStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitations = null,
    Object? calls = null,
  }) {
    return _then(_$InitialImpl(
      null == invitations
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as Stream<Either<Failure, List<Room>>>,
      null == calls
          ? _value._calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<CallInfo>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      [this.invitations = const Stream.empty(),
      final List<CallInfo> calls = const []])
      : _calls = calls;

  @override
  @JsonKey()
  final Stream<Either<Failure, List<Room>>> invitations;
  final List<CallInfo> _calls;
  @override
  @JsonKey()
  List<CallInfo> get calls {
    if (_calls is EqualUnmodifiableListView) return _calls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calls);
  }

  @override
  String toString() {
    return 'RecentCallState.initial(invitations: $invitations, calls: $calls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.invitations, invitations) ||
                other.invitations == invitations) &&
            const DeepCollectionEquality().equals(other._calls, _calls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, invitations, const DeepCollectionEquality().hash(_calls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        initial,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshInProgress,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshSuccess,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)
        refreshFailure,
  }) {
    return initial(invitations, calls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
  }) {
    return initial?.call(invitations, calls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(invitations, calls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RefreshInProgress value) refreshInProgress,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_RefreshFailure value) refreshFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RefreshInProgress value)? refreshInProgress,
    TResult? Function(_RefreshSuccess value)? refreshSuccess,
    TResult? Function(_RefreshFailure value)? refreshFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshInProgress value)? refreshInProgress,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_RefreshFailure value)? refreshFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecentCallState {
  const factory _Initial(
      [final Stream<Either<Failure, List<Room>>> invitations,
      final List<CallInfo> calls]) = _$InitialImpl;

  @override
  Stream<Either<Failure, List<Room>>> get invitations;
  @override
  List<CallInfo> get calls;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshInProgressImplCopyWith<$Res>
    implements $RecentCallStateCopyWith<$Res> {
  factory _$$RefreshInProgressImplCopyWith(_$RefreshInProgressImpl value,
          $Res Function(_$RefreshInProgressImpl) then) =
      __$$RefreshInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Stream<Either<Failure, List<Room>>> invitations, List<CallInfo> calls});
}

/// @nodoc
class __$$RefreshInProgressImplCopyWithImpl<$Res>
    extends _$RecentCallStateCopyWithImpl<$Res, _$RefreshInProgressImpl>
    implements _$$RefreshInProgressImplCopyWith<$Res> {
  __$$RefreshInProgressImplCopyWithImpl(_$RefreshInProgressImpl _value,
      $Res Function(_$RefreshInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitations = null,
    Object? calls = null,
  }) {
    return _then(_$RefreshInProgressImpl(
      null == invitations
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as Stream<Either<Failure, List<Room>>>,
      null == calls
          ? _value._calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<CallInfo>,
    ));
  }
}

/// @nodoc

class _$RefreshInProgressImpl implements _RefreshInProgress {
  const _$RefreshInProgressImpl(this.invitations,
      [final List<CallInfo> calls = const []])
      : _calls = calls;

  @override
  final Stream<Either<Failure, List<Room>>> invitations;
  final List<CallInfo> _calls;
  @override
  @JsonKey()
  List<CallInfo> get calls {
    if (_calls is EqualUnmodifiableListView) return _calls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calls);
  }

  @override
  String toString() {
    return 'RecentCallState.refreshInProgress(invitations: $invitations, calls: $calls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshInProgressImpl &&
            (identical(other.invitations, invitations) ||
                other.invitations == invitations) &&
            const DeepCollectionEquality().equals(other._calls, _calls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, invitations, const DeepCollectionEquality().hash(_calls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshInProgressImplCopyWith<_$RefreshInProgressImpl> get copyWith =>
      __$$RefreshInProgressImplCopyWithImpl<_$RefreshInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        initial,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshInProgress,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshSuccess,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)
        refreshFailure,
  }) {
    return refreshInProgress(invitations, calls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
  }) {
    return refreshInProgress?.call(invitations, calls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
    required TResult orElse(),
  }) {
    if (refreshInProgress != null) {
      return refreshInProgress(invitations, calls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RefreshInProgress value) refreshInProgress,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_RefreshFailure value) refreshFailure,
  }) {
    return refreshInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RefreshInProgress value)? refreshInProgress,
    TResult? Function(_RefreshSuccess value)? refreshSuccess,
    TResult? Function(_RefreshFailure value)? refreshFailure,
  }) {
    return refreshInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshInProgress value)? refreshInProgress,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_RefreshFailure value)? refreshFailure,
    required TResult orElse(),
  }) {
    if (refreshInProgress != null) {
      return refreshInProgress(this);
    }
    return orElse();
  }
}

abstract class _RefreshInProgress implements RecentCallState {
  const factory _RefreshInProgress(
      final Stream<Either<Failure, List<Room>>> invitations,
      [final List<CallInfo> calls]) = _$RefreshInProgressImpl;

  @override
  Stream<Either<Failure, List<Room>>> get invitations;
  @override
  List<CallInfo> get calls;
  @override
  @JsonKey(ignore: true)
  _$$RefreshInProgressImplCopyWith<_$RefreshInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshSuccessImplCopyWith<$Res>
    implements $RecentCallStateCopyWith<$Res> {
  factory _$$RefreshSuccessImplCopyWith(_$RefreshSuccessImpl value,
          $Res Function(_$RefreshSuccessImpl) then) =
      __$$RefreshSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Stream<Either<Failure, List<Room>>> invitations, List<CallInfo> calls});
}

/// @nodoc
class __$$RefreshSuccessImplCopyWithImpl<$Res>
    extends _$RecentCallStateCopyWithImpl<$Res, _$RefreshSuccessImpl>
    implements _$$RefreshSuccessImplCopyWith<$Res> {
  __$$RefreshSuccessImplCopyWithImpl(
      _$RefreshSuccessImpl _value, $Res Function(_$RefreshSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitations = null,
    Object? calls = null,
  }) {
    return _then(_$RefreshSuccessImpl(
      null == invitations
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as Stream<Either<Failure, List<Room>>>,
      null == calls
          ? _value._calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<CallInfo>,
    ));
  }
}

/// @nodoc

class _$RefreshSuccessImpl implements _RefreshSuccess {
  const _$RefreshSuccessImpl(this.invitations, final List<CallInfo> calls)
      : _calls = calls;

  @override
  final Stream<Either<Failure, List<Room>>> invitations;
  final List<CallInfo> _calls;
  @override
  List<CallInfo> get calls {
    if (_calls is EqualUnmodifiableListView) return _calls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calls);
  }

  @override
  String toString() {
    return 'RecentCallState.refreshSuccess(invitations: $invitations, calls: $calls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshSuccessImpl &&
            (identical(other.invitations, invitations) ||
                other.invitations == invitations) &&
            const DeepCollectionEquality().equals(other._calls, _calls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, invitations, const DeepCollectionEquality().hash(_calls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshSuccessImplCopyWith<_$RefreshSuccessImpl> get copyWith =>
      __$$RefreshSuccessImplCopyWithImpl<_$RefreshSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        initial,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshInProgress,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshSuccess,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)
        refreshFailure,
  }) {
    return refreshSuccess(invitations, calls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
  }) {
    return refreshSuccess?.call(invitations, calls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
    required TResult orElse(),
  }) {
    if (refreshSuccess != null) {
      return refreshSuccess(invitations, calls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RefreshInProgress value) refreshInProgress,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_RefreshFailure value) refreshFailure,
  }) {
    return refreshSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RefreshInProgress value)? refreshInProgress,
    TResult? Function(_RefreshSuccess value)? refreshSuccess,
    TResult? Function(_RefreshFailure value)? refreshFailure,
  }) {
    return refreshSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshInProgress value)? refreshInProgress,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_RefreshFailure value)? refreshFailure,
    required TResult orElse(),
  }) {
    if (refreshSuccess != null) {
      return refreshSuccess(this);
    }
    return orElse();
  }
}

abstract class _RefreshSuccess implements RecentCallState {
  const factory _RefreshSuccess(
      final Stream<Either<Failure, List<Room>>> invitations,
      final List<CallInfo> calls) = _$RefreshSuccessImpl;

  @override
  Stream<Either<Failure, List<Room>>> get invitations;
  @override
  List<CallInfo> get calls;
  @override
  @JsonKey(ignore: true)
  _$$RefreshSuccessImplCopyWith<_$RefreshSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshFailureImplCopyWith<$Res>
    implements $RecentCallStateCopyWith<$Res> {
  factory _$$RefreshFailureImplCopyWith(_$RefreshFailureImpl value,
          $Res Function(_$RefreshFailureImpl) then) =
      __$$RefreshFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Stream<Either<Failure, List<Room>>> invitations,
      List<CallInfo> calls,
      Failure failure});
}

/// @nodoc
class __$$RefreshFailureImplCopyWithImpl<$Res>
    extends _$RecentCallStateCopyWithImpl<$Res, _$RefreshFailureImpl>
    implements _$$RefreshFailureImplCopyWith<$Res> {
  __$$RefreshFailureImplCopyWithImpl(
      _$RefreshFailureImpl _value, $Res Function(_$RefreshFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitations = null,
    Object? calls = null,
    Object? failure = null,
  }) {
    return _then(_$RefreshFailureImpl(
      null == invitations
          ? _value.invitations
          : invitations // ignore: cast_nullable_to_non_nullable
              as Stream<Either<Failure, List<Room>>>,
      null == calls
          ? _value._calls
          : calls // ignore: cast_nullable_to_non_nullable
              as List<CallInfo>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$RefreshFailureImpl implements _RefreshFailure {
  const _$RefreshFailureImpl(this.invitations, final List<CallInfo> calls,
      {required this.failure})
      : _calls = calls;

  @override
  final Stream<Either<Failure, List<Room>>> invitations;
  final List<CallInfo> _calls;
  @override
  List<CallInfo> get calls {
    if (_calls is EqualUnmodifiableListView) return _calls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calls);
  }

  @override
  final Failure failure;

  @override
  String toString() {
    return 'RecentCallState.refreshFailure(invitations: $invitations, calls: $calls, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshFailureImpl &&
            (identical(other.invitations, invitations) ||
                other.invitations == invitations) &&
            const DeepCollectionEquality().equals(other._calls, _calls) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invitations,
      const DeepCollectionEquality().hash(_calls), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshFailureImplCopyWith<_$RefreshFailureImpl> get copyWith =>
      __$$RefreshFailureImplCopyWithImpl<_$RefreshFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        initial,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshInProgress,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)
        refreshSuccess,
    required TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)
        refreshFailure,
  }) {
    return refreshFailure(invitations, calls, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult? Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
  }) {
    return refreshFailure?.call(invitations, calls, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        initial,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshInProgress,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls)?
        refreshSuccess,
    TResult Function(Stream<Either<Failure, List<Room>>> invitations,
            List<CallInfo> calls, Failure failure)?
        refreshFailure,
    required TResult orElse(),
  }) {
    if (refreshFailure != null) {
      return refreshFailure(invitations, calls, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RefreshInProgress value) refreshInProgress,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_RefreshFailure value) refreshFailure,
  }) {
    return refreshFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RefreshInProgress value)? refreshInProgress,
    TResult? Function(_RefreshSuccess value)? refreshSuccess,
    TResult? Function(_RefreshFailure value)? refreshFailure,
  }) {
    return refreshFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshInProgress value)? refreshInProgress,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_RefreshFailure value)? refreshFailure,
    required TResult orElse(),
  }) {
    if (refreshFailure != null) {
      return refreshFailure(this);
    }
    return orElse();
  }
}

abstract class _RefreshFailure implements RecentCallState {
  const factory _RefreshFailure(
      final Stream<Either<Failure, List<Room>>> invitations,
      final List<CallInfo> calls,
      {required final Failure failure}) = _$RefreshFailureImpl;

  @override
  Stream<Either<Failure, List<Room>>> get invitations;
  @override
  List<CallInfo> get calls;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$RefreshFailureImplCopyWith<_$RefreshFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
