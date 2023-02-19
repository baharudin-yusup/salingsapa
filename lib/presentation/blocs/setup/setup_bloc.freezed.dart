// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupEventCopyWith<$Res> {
  factory $SetupEventCopyWith(
          SetupEvent value, $Res Function(SetupEvent) then) =
      _$SetupEventCopyWithImpl<$Res, SetupEvent>;
}

/// @nodoc
class _$SetupEventCopyWithImpl<$Res, $Val extends SetupEvent>
    implements $SetupEventCopyWith<$Res> {
  _$SetupEventCopyWithImpl(this._value, this._then);

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
    extends _$SetupEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SetupEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SetupEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$SetupState {
  String get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) inputPhoneNumberInitial,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputOtpInitial value) inputOtpInitial,
    required TResult Function(_InputOtpValidationInProgress value)
        inputOtpValidationInProgress,
    required TResult Function(_InputOtpValidationSuccess value)
        inputOtpValidationSuccess,
    required TResult Function(_InputOtpValidationFailure value)
        inputOtpValidationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputOtpInitial value)? inputOtpInitial,
    TResult? Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult? Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult? Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputOtpInitial value)? inputOtpInitial,
    TResult Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetupStateCopyWith<SetupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupStateCopyWith<$Res> {
  factory $SetupStateCopyWith(
          SetupState value, $Res Function(SetupState) then) =
      _$SetupStateCopyWithImpl<$Res, SetupState>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$SetupStateCopyWithImpl<$Res, $Val extends SetupState>
    implements $SetupStateCopyWith<$Res> {
  _$SetupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InputPhoneNumberInitialCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$_InputPhoneNumberInitialCopyWith(_$_InputPhoneNumberInitial value,
          $Res Function(_$_InputPhoneNumberInitial) then) =
      __$$_InputPhoneNumberInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_InputPhoneNumberInitialCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$_InputPhoneNumberInitial>
    implements _$$_InputPhoneNumberInitialCopyWith<$Res> {
  __$$_InputPhoneNumberInitialCopyWithImpl(_$_InputPhoneNumberInitial _value,
      $Res Function(_$_InputPhoneNumberInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_InputPhoneNumberInitial(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputPhoneNumberInitial implements _InputPhoneNumberInitial {
  const _$_InputPhoneNumberInitial([this.phoneNumber = '']);

  @override
  @JsonKey()
  final String phoneNumber;

  @override
  String toString() {
    return 'SetupState.inputPhoneNumberInitial(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPhoneNumberInitial &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputPhoneNumberInitialCopyWith<_$_InputPhoneNumberInitial>
      get copyWith =>
          __$$_InputPhoneNumberInitialCopyWithImpl<_$_InputPhoneNumberInitial>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) inputPhoneNumberInitial,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberInitial(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberInitial?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputPhoneNumberInitial != null) {
      return inputPhoneNumberInitial(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputOtpInitial value) inputOtpInitial,
    required TResult Function(_InputOtpValidationInProgress value)
        inputOtpValidationInProgress,
    required TResult Function(_InputOtpValidationSuccess value)
        inputOtpValidationSuccess,
    required TResult Function(_InputOtpValidationFailure value)
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputOtpInitial value)? inputOtpInitial,
    TResult? Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult? Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult? Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputOtpInitial value)? inputOtpInitial,
    TResult Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputPhoneNumberInitial != null) {
      return inputPhoneNumberInitial(this);
    }
    return orElse();
  }
}

abstract class _InputPhoneNumberInitial implements SetupState {
  const factory _InputPhoneNumberInitial([final String phoneNumber]) =
      _$_InputPhoneNumberInitial;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_InputPhoneNumberInitialCopyWith<_$_InputPhoneNumberInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputPhoneNumberFailureCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$_InputPhoneNumberFailureCopyWith(_$_InputPhoneNumberFailure value,
          $Res Function(_$_InputPhoneNumberFailure) then) =
      __$$_InputPhoneNumberFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, Failure failure});
}

/// @nodoc
class __$$_InputPhoneNumberFailureCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$_InputPhoneNumberFailure>
    implements _$$_InputPhoneNumberFailureCopyWith<$Res> {
  __$$_InputPhoneNumberFailureCopyWithImpl(_$_InputPhoneNumberFailure _value,
      $Res Function(_$_InputPhoneNumberFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? failure = null,
  }) {
    return _then(_$_InputPhoneNumberFailure(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_InputPhoneNumberFailure implements _InputPhoneNumberFailure {
  const _$_InputPhoneNumberFailure(this.phoneNumber, this.failure);

  @override
  final String phoneNumber;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'SetupState.inputPhoneNumberFailure(phoneNumber: $phoneNumber, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPhoneNumberFailure &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputPhoneNumberFailureCopyWith<_$_InputPhoneNumberFailure>
      get copyWith =>
          __$$_InputPhoneNumberFailureCopyWithImpl<_$_InputPhoneNumberFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) inputPhoneNumberInitial,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberFailure(phoneNumber, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberFailure?.call(phoneNumber, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputPhoneNumberFailure != null) {
      return inputPhoneNumberFailure(phoneNumber, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputOtpInitial value) inputOtpInitial,
    required TResult Function(_InputOtpValidationInProgress value)
        inputOtpValidationInProgress,
    required TResult Function(_InputOtpValidationSuccess value)
        inputOtpValidationSuccess,
    required TResult Function(_InputOtpValidationFailure value)
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputOtpInitial value)? inputOtpInitial,
    TResult? Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult? Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult? Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputOtpInitial value)? inputOtpInitial,
    TResult Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputPhoneNumberFailure != null) {
      return inputPhoneNumberFailure(this);
    }
    return orElse();
  }
}

abstract class _InputPhoneNumberFailure implements SetupState {
  const factory _InputPhoneNumberFailure(
          final String phoneNumber, final Failure failure) =
      _$_InputPhoneNumberFailure;

  @override
  String get phoneNumber;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_InputPhoneNumberFailureCopyWith<_$_InputPhoneNumberFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputOtpInitialCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$_InputOtpInitialCopyWith(
          _$_InputOtpInitial value, $Res Function(_$_InputOtpInitial) then) =
      __$$_InputOtpInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String otp});
}

/// @nodoc
class __$$_InputOtpInitialCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$_InputOtpInitial>
    implements _$$_InputOtpInitialCopyWith<$Res> {
  __$$_InputOtpInitialCopyWithImpl(
      _$_InputOtpInitial _value, $Res Function(_$_InputOtpInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$_InputOtpInitial(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputOtpInitial implements _InputOtpInitial {
  const _$_InputOtpInitial(this.phoneNumber, this.otp);

  @override
  final String phoneNumber;
  @override
  final String otp;

  @override
  String toString() {
    return 'SetupState.inputOtpInitial(phoneNumber: $phoneNumber, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputOtpInitial &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputOtpInitialCopyWith<_$_InputOtpInitial> get copyWith =>
      __$$_InputOtpInitialCopyWithImpl<_$_InputOtpInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) inputPhoneNumberInitial,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) {
    return inputOtpInitial(phoneNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) {
    return inputOtpInitial?.call(phoneNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputOtpInitial != null) {
      return inputOtpInitial(phoneNumber, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputOtpInitial value) inputOtpInitial,
    required TResult Function(_InputOtpValidationInProgress value)
        inputOtpValidationInProgress,
    required TResult Function(_InputOtpValidationSuccess value)
        inputOtpValidationSuccess,
    required TResult Function(_InputOtpValidationFailure value)
        inputOtpValidationFailure,
  }) {
    return inputOtpInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputOtpInitial value)? inputOtpInitial,
    TResult? Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult? Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult? Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
  }) {
    return inputOtpInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputOtpInitial value)? inputOtpInitial,
    TResult Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputOtpInitial != null) {
      return inputOtpInitial(this);
    }
    return orElse();
  }
}

abstract class _InputOtpInitial implements SetupState {
  const factory _InputOtpInitial(final String phoneNumber, final String otp) =
      _$_InputOtpInitial;

  @override
  String get phoneNumber;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_InputOtpInitialCopyWith<_$_InputOtpInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputOtpValidationInProgressCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$_InputOtpValidationInProgressCopyWith(
          _$_InputOtpValidationInProgress value,
          $Res Function(_$_InputOtpValidationInProgress) then) =
      __$$_InputOtpValidationInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String otp});
}

/// @nodoc
class __$$_InputOtpValidationInProgressCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$_InputOtpValidationInProgress>
    implements _$$_InputOtpValidationInProgressCopyWith<$Res> {
  __$$_InputOtpValidationInProgressCopyWithImpl(
      _$_InputOtpValidationInProgress _value,
      $Res Function(_$_InputOtpValidationInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$_InputOtpValidationInProgress(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputOtpValidationInProgress implements _InputOtpValidationInProgress {
  const _$_InputOtpValidationInProgress(this.phoneNumber, this.otp);

  @override
  final String phoneNumber;
  @override
  final String otp;

  @override
  String toString() {
    return 'SetupState.inputOtpValidationInProgress(phoneNumber: $phoneNumber, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputOtpValidationInProgress &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputOtpValidationInProgressCopyWith<_$_InputOtpValidationInProgress>
      get copyWith => __$$_InputOtpValidationInProgressCopyWithImpl<
          _$_InputOtpValidationInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) inputPhoneNumberInitial,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationInProgress(phoneNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationInProgress?.call(phoneNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputOtpValidationInProgress != null) {
      return inputOtpValidationInProgress(phoneNumber, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputOtpInitial value) inputOtpInitial,
    required TResult Function(_InputOtpValidationInProgress value)
        inputOtpValidationInProgress,
    required TResult Function(_InputOtpValidationSuccess value)
        inputOtpValidationSuccess,
    required TResult Function(_InputOtpValidationFailure value)
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputOtpInitial value)? inputOtpInitial,
    TResult? Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult? Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult? Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputOtpInitial value)? inputOtpInitial,
    TResult Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputOtpValidationInProgress != null) {
      return inputOtpValidationInProgress(this);
    }
    return orElse();
  }
}

abstract class _InputOtpValidationInProgress implements SetupState {
  const factory _InputOtpValidationInProgress(
          final String phoneNumber, final String otp) =
      _$_InputOtpValidationInProgress;

  @override
  String get phoneNumber;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_InputOtpValidationInProgressCopyWith<_$_InputOtpValidationInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputOtpValidationSuccessCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$_InputOtpValidationSuccessCopyWith(
          _$_InputOtpValidationSuccess value,
          $Res Function(_$_InputOtpValidationSuccess) then) =
      __$$_InputOtpValidationSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String otp});
}

/// @nodoc
class __$$_InputOtpValidationSuccessCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$_InputOtpValidationSuccess>
    implements _$$_InputOtpValidationSuccessCopyWith<$Res> {
  __$$_InputOtpValidationSuccessCopyWithImpl(
      _$_InputOtpValidationSuccess _value,
      $Res Function(_$_InputOtpValidationSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$_InputOtpValidationSuccess(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputOtpValidationSuccess implements _InputOtpValidationSuccess {
  const _$_InputOtpValidationSuccess(this.phoneNumber, this.otp);

  @override
  final String phoneNumber;
  @override
  final String otp;

  @override
  String toString() {
    return 'SetupState.inputOtpValidationSuccess(phoneNumber: $phoneNumber, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputOtpValidationSuccess &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputOtpValidationSuccessCopyWith<_$_InputOtpValidationSuccess>
      get copyWith => __$$_InputOtpValidationSuccessCopyWithImpl<
          _$_InputOtpValidationSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) inputPhoneNumberInitial,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationSuccess(phoneNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationSuccess?.call(phoneNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputOtpValidationSuccess != null) {
      return inputOtpValidationSuccess(phoneNumber, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputOtpInitial value) inputOtpInitial,
    required TResult Function(_InputOtpValidationInProgress value)
        inputOtpValidationInProgress,
    required TResult Function(_InputOtpValidationSuccess value)
        inputOtpValidationSuccess,
    required TResult Function(_InputOtpValidationFailure value)
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputOtpInitial value)? inputOtpInitial,
    TResult? Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult? Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult? Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputOtpInitial value)? inputOtpInitial,
    TResult Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputOtpValidationSuccess != null) {
      return inputOtpValidationSuccess(this);
    }
    return orElse();
  }
}

abstract class _InputOtpValidationSuccess implements SetupState {
  const factory _InputOtpValidationSuccess(
          final String phoneNumber, final String otp) =
      _$_InputOtpValidationSuccess;

  @override
  String get phoneNumber;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_InputOtpValidationSuccessCopyWith<_$_InputOtpValidationSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputOtpValidationFailureCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$_InputOtpValidationFailureCopyWith(
          _$_InputOtpValidationFailure value,
          $Res Function(_$_InputOtpValidationFailure) then) =
      __$$_InputOtpValidationFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String otp, Failure failure});
}

/// @nodoc
class __$$_InputOtpValidationFailureCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$_InputOtpValidationFailure>
    implements _$$_InputOtpValidationFailureCopyWith<$Res> {
  __$$_InputOtpValidationFailureCopyWithImpl(
      _$_InputOtpValidationFailure _value,
      $Res Function(_$_InputOtpValidationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
    Object? failure = null,
  }) {
    return _then(_$_InputOtpValidationFailure(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_InputOtpValidationFailure implements _InputOtpValidationFailure {
  const _$_InputOtpValidationFailure(this.phoneNumber, this.otp, this.failure);

  @override
  final String phoneNumber;
  @override
  final String otp;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'SetupState.inputOtpValidationFailure(phoneNumber: $phoneNumber, otp: $otp, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputOtpValidationFailure &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputOtpValidationFailureCopyWith<_$_InputOtpValidationFailure>
      get copyWith => __$$_InputOtpValidationFailureCopyWithImpl<
          _$_InputOtpValidationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) inputPhoneNumberInitial,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationFailure(phoneNumber, otp, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationFailure?.call(phoneNumber, otp, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? inputPhoneNumberInitial,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputOtpValidationFailure != null) {
      return inputOtpValidationFailure(phoneNumber, otp, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputOtpInitial value) inputOtpInitial,
    required TResult Function(_InputOtpValidationInProgress value)
        inputOtpValidationInProgress,
    required TResult Function(_InputOtpValidationSuccess value)
        inputOtpValidationSuccess,
    required TResult Function(_InputOtpValidationFailure value)
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputOtpInitial value)? inputOtpInitial,
    TResult? Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult? Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult? Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
  }) {
    return inputOtpValidationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputOtpInitial value)? inputOtpInitial,
    TResult Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputOtpValidationFailure != null) {
      return inputOtpValidationFailure(this);
    }
    return orElse();
  }
}

abstract class _InputOtpValidationFailure implements SetupState {
  const factory _InputOtpValidationFailure(
          final String phoneNumber, final String otp, final Failure failure) =
      _$_InputOtpValidationFailure;

  @override
  String get phoneNumber;
  String get otp;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_InputOtpValidationFailureCopyWith<_$_InputOtpValidationFailure>
      get copyWith => throw _privateConstructorUsedError;
}
