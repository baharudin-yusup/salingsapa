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
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() buttonDonePressed,
    required TResult Function(String otp) otpChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? buttonDonePressed,
    TResult? Function(String otp)? otpChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? buttonDonePressed,
    TResult Function(String otp)? otpChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_ButtonDonePressed value) buttonDonePressed,
    required TResult Function(_OtpChanged value) otpChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult? Function(_OtpChanged value)? otpChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult Function(_OtpChanged value)? otpChanged,
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
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() buttonDonePressed,
    required TResult Function(String otp) otpChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? buttonDonePressed,
    TResult? Function(String otp)? otpChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? buttonDonePressed,
    TResult Function(String otp)? otpChanged,
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
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_ButtonDonePressed value) buttonDonePressed,
    required TResult Function(_OtpChanged value) otpChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult? Function(_OtpChanged value)? otpChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult Function(_OtpChanged value)? otpChanged,
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
abstract class _$$_PhoneNumberChangedCopyWith<$Res> {
  factory _$$_PhoneNumberChangedCopyWith(_$_PhoneNumberChanged value,
          $Res Function(_$_PhoneNumberChanged) then) =
      __$$_PhoneNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_PhoneNumberChangedCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$_PhoneNumberChanged>
    implements _$$_PhoneNumberChangedCopyWith<$Res> {
  __$$_PhoneNumberChangedCopyWithImpl(
      _$_PhoneNumberChanged _value, $Res Function(_$_PhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_PhoneNumberChanged(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SetupEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      __$$_PhoneNumberChangedCopyWithImpl<_$_PhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() buttonDonePressed,
    required TResult Function(String otp) otpChanged,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? buttonDonePressed,
    TResult? Function(String otp)? otpChanged,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? buttonDonePressed,
    TResult Function(String otp)? otpChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_ButtonDonePressed value) buttonDonePressed,
    required TResult Function(_OtpChanged value) otpChanged,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult? Function(_OtpChanged value)? otpChanged,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult Function(_OtpChanged value)? otpChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements SetupEvent {
  const factory _PhoneNumberChanged(final String phoneNumber) =
      _$_PhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ButtonDonePressedCopyWith<$Res> {
  factory _$$_ButtonDonePressedCopyWith(_$_ButtonDonePressed value,
          $Res Function(_$_ButtonDonePressed) then) =
      __$$_ButtonDonePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ButtonDonePressedCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$_ButtonDonePressed>
    implements _$$_ButtonDonePressedCopyWith<$Res> {
  __$$_ButtonDonePressedCopyWithImpl(
      _$_ButtonDonePressed _value, $Res Function(_$_ButtonDonePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ButtonDonePressed implements _ButtonDonePressed {
  const _$_ButtonDonePressed();

  @override
  String toString() {
    return 'SetupEvent.buttonDonePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ButtonDonePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() buttonDonePressed,
    required TResult Function(String otp) otpChanged,
  }) {
    return buttonDonePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? buttonDonePressed,
    TResult? Function(String otp)? otpChanged,
  }) {
    return buttonDonePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? buttonDonePressed,
    TResult Function(String otp)? otpChanged,
    required TResult orElse(),
  }) {
    if (buttonDonePressed != null) {
      return buttonDonePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_ButtonDonePressed value) buttonDonePressed,
    required TResult Function(_OtpChanged value) otpChanged,
  }) {
    return buttonDonePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult? Function(_OtpChanged value)? otpChanged,
  }) {
    return buttonDonePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult Function(_OtpChanged value)? otpChanged,
    required TResult orElse(),
  }) {
    if (buttonDonePressed != null) {
      return buttonDonePressed(this);
    }
    return orElse();
  }
}

abstract class _ButtonDonePressed implements SetupEvent {
  const factory _ButtonDonePressed() = _$_ButtonDonePressed;
}

/// @nodoc
abstract class _$$_OtpChangedCopyWith<$Res> {
  factory _$$_OtpChangedCopyWith(
          _$_OtpChanged value, $Res Function(_$_OtpChanged) then) =
      __$$_OtpChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$_OtpChangedCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$_OtpChanged>
    implements _$$_OtpChangedCopyWith<$Res> {
  __$$_OtpChangedCopyWithImpl(
      _$_OtpChanged _value, $Res Function(_$_OtpChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$_OtpChanged(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpChanged implements _OtpChanged {
  const _$_OtpChanged(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'SetupEvent.otpChanged(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpChanged &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpChangedCopyWith<_$_OtpChanged> get copyWith =>
      __$$_OtpChangedCopyWithImpl<_$_OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() buttonDonePressed,
    required TResult Function(String otp) otpChanged,
  }) {
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? buttonDonePressed,
    TResult? Function(String otp)? otpChanged,
  }) {
    return otpChanged?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? buttonDonePressed,
    TResult Function(String otp)? otpChanged,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_ButtonDonePressed value) buttonDonePressed,
    required TResult Function(_OtpChanged value) otpChanged,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult? Function(_OtpChanged value)? otpChanged,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_ButtonDonePressed value)? buttonDonePressed,
    TResult Function(_OtpChanged value)? otpChanged,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements SetupEvent {
  const factory _OtpChanged(final String otp) = _$_OtpChanged;

  String get otp;
  @JsonKey(ignore: true)
  _$$_OtpChangedCopyWith<_$_OtpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetupState {
  String get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool canSubmit)
        inputPhoneNumberInitial,
    required TResult Function(String phoneNumber)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber) inputPhoneNumberSuccess,
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
    TResult? Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult? Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    TResult Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    required TResult Function(InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberVerifyInProgress value)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputPhoneNumberSuccess value)
        inputPhoneNumberSuccess,
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
    TResult? Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    TResult Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
abstract class _$$InputPhoneNumberInitialCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$InputPhoneNumberInitialCopyWith(_$InputPhoneNumberInitial value,
          $Res Function(_$InputPhoneNumberInitial) then) =
      __$$InputPhoneNumberInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, bool canSubmit});
}

/// @nodoc
class __$$InputPhoneNumberInitialCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$InputPhoneNumberInitial>
    implements _$$InputPhoneNumberInitialCopyWith<$Res> {
  __$$InputPhoneNumberInitialCopyWithImpl(_$InputPhoneNumberInitial _value,
      $Res Function(_$InputPhoneNumberInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? canSubmit = null,
  }) {
    return _then(_$InputPhoneNumberInitial(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == canSubmit
          ? _value.canSubmit
          : canSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InputPhoneNumberInitial implements InputPhoneNumberInitial {
  const _$InputPhoneNumberInitial(
      [this.phoneNumber = '', this.canSubmit = false]);

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final bool canSubmit;

  @override
  String toString() {
    return 'SetupState.inputPhoneNumberInitial(phoneNumber: $phoneNumber, canSubmit: $canSubmit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputPhoneNumberInitial &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.canSubmit, canSubmit) ||
                other.canSubmit == canSubmit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, canSubmit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPhoneNumberInitialCopyWith<_$InputPhoneNumberInitial> get copyWith =>
      __$$InputPhoneNumberInitialCopyWithImpl<_$InputPhoneNumberInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool canSubmit)
        inputPhoneNumberInitial,
    required TResult Function(String phoneNumber)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber) inputPhoneNumberSuccess,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberInitial(phoneNumber, canSubmit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult? Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber)? inputPhoneNumberSuccess,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberInitial?.call(phoneNumber, canSubmit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber)? inputPhoneNumberSuccess,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputPhoneNumberInitial != null) {
      return inputPhoneNumberInitial(phoneNumber, canSubmit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberVerifyInProgress value)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputPhoneNumberSuccess value)
        inputPhoneNumberSuccess,
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
    TResult? Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    TResult Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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

abstract class InputPhoneNumberInitial implements SetupState {
  const factory InputPhoneNumberInitial(
      [final String phoneNumber,
      final bool canSubmit]) = _$InputPhoneNumberInitial;

  @override
  String get phoneNumber;
  bool get canSubmit;
  @override
  @JsonKey(ignore: true)
  _$$InputPhoneNumberInitialCopyWith<_$InputPhoneNumberInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputPhoneNumberVerifyInProgressCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$_InputPhoneNumberVerifyInProgressCopyWith(
          _$_InputPhoneNumberVerifyInProgress value,
          $Res Function(_$_InputPhoneNumberVerifyInProgress) then) =
      __$$_InputPhoneNumberVerifyInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_InputPhoneNumberVerifyInProgressCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$_InputPhoneNumberVerifyInProgress>
    implements _$$_InputPhoneNumberVerifyInProgressCopyWith<$Res> {
  __$$_InputPhoneNumberVerifyInProgressCopyWithImpl(
      _$_InputPhoneNumberVerifyInProgress _value,
      $Res Function(_$_InputPhoneNumberVerifyInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_InputPhoneNumberVerifyInProgress(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputPhoneNumberVerifyInProgress
    implements _InputPhoneNumberVerifyInProgress {
  const _$_InputPhoneNumberVerifyInProgress(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SetupState.inputPhoneNumberVerifyInProgress(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPhoneNumberVerifyInProgress &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputPhoneNumberVerifyInProgressCopyWith<
          _$_InputPhoneNumberVerifyInProgress>
      get copyWith => __$$_InputPhoneNumberVerifyInProgressCopyWithImpl<
          _$_InputPhoneNumberVerifyInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool canSubmit)
        inputPhoneNumberInitial,
    required TResult Function(String phoneNumber)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber) inputPhoneNumberSuccess,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberVerifyInProgress(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult? Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber)? inputPhoneNumberSuccess,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberVerifyInProgress?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber)? inputPhoneNumberSuccess,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputPhoneNumberVerifyInProgress != null) {
      return inputPhoneNumberVerifyInProgress(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberVerifyInProgress value)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputPhoneNumberSuccess value)
        inputPhoneNumberSuccess,
    required TResult Function(_InputOtpInitial value) inputOtpInitial,
    required TResult Function(_InputOtpValidationInProgress value)
        inputOtpValidationInProgress,
    required TResult Function(_InputOtpValidationSuccess value)
        inputOtpValidationSuccess,
    required TResult Function(_InputOtpValidationFailure value)
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberVerifyInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
    TResult? Function(_InputOtpInitial value)? inputOtpInitial,
    TResult? Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult? Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult? Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberVerifyInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
    TResult Function(_InputOtpInitial value)? inputOtpInitial,
    TResult Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputPhoneNumberVerifyInProgress != null) {
      return inputPhoneNumberVerifyInProgress(this);
    }
    return orElse();
  }
}

abstract class _InputPhoneNumberVerifyInProgress implements SetupState {
  const factory _InputPhoneNumberVerifyInProgress(final String phoneNumber) =
      _$_InputPhoneNumberVerifyInProgress;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_InputPhoneNumberVerifyInProgressCopyWith<
          _$_InputPhoneNumberVerifyInProgress>
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
    required TResult Function(String phoneNumber, bool canSubmit)
        inputPhoneNumberInitial,
    required TResult Function(String phoneNumber)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber) inputPhoneNumberSuccess,
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
    TResult? Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult? Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    TResult Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    required TResult Function(InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberVerifyInProgress value)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputPhoneNumberSuccess value)
        inputPhoneNumberSuccess,
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
    TResult? Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    TResult Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
abstract class _$$_InputPhoneNumberSuccessCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$_InputPhoneNumberSuccessCopyWith(_$_InputPhoneNumberSuccess value,
          $Res Function(_$_InputPhoneNumberSuccess) then) =
      __$$_InputPhoneNumberSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_InputPhoneNumberSuccessCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$_InputPhoneNumberSuccess>
    implements _$$_InputPhoneNumberSuccessCopyWith<$Res> {
  __$$_InputPhoneNumberSuccessCopyWithImpl(_$_InputPhoneNumberSuccess _value,
      $Res Function(_$_InputPhoneNumberSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_InputPhoneNumberSuccess(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputPhoneNumberSuccess implements _InputPhoneNumberSuccess {
  const _$_InputPhoneNumberSuccess(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SetupState.inputPhoneNumberSuccess(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPhoneNumberSuccess &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputPhoneNumberSuccessCopyWith<_$_InputPhoneNumberSuccess>
      get copyWith =>
          __$$_InputPhoneNumberSuccessCopyWithImpl<_$_InputPhoneNumberSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool canSubmit)
        inputPhoneNumberInitial,
    required TResult Function(String phoneNumber)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber) inputPhoneNumberSuccess,
    required TResult Function(String phoneNumber, String otp) inputOtpInitial,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationInProgress,
    required TResult Function(String phoneNumber, String otp)
        inputOtpValidationSuccess,
    required TResult Function(String phoneNumber, String otp, Failure failure)
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberSuccess(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult? Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber)? inputPhoneNumberSuccess,
    TResult? Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult? Function(String phoneNumber, String otp)?
        inputOtpValidationSuccess,
    TResult? Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberSuccess?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber)? inputPhoneNumberSuccess,
    TResult Function(String phoneNumber, String otp)? inputOtpInitial,
    TResult Function(String phoneNumber, String otp)?
        inputOtpValidationInProgress,
    TResult Function(String phoneNumber, String otp)? inputOtpValidationSuccess,
    TResult Function(String phoneNumber, String otp, Failure failure)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputPhoneNumberSuccess != null) {
      return inputPhoneNumberSuccess(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberVerifyInProgress value)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputPhoneNumberSuccess value)
        inputPhoneNumberSuccess,
    required TResult Function(_InputOtpInitial value) inputOtpInitial,
    required TResult Function(_InputOtpValidationInProgress value)
        inputOtpValidationInProgress,
    required TResult Function(_InputOtpValidationSuccess value)
        inputOtpValidationSuccess,
    required TResult Function(_InputOtpValidationFailure value)
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
    TResult? Function(_InputOtpInitial value)? inputOtpInitial,
    TResult? Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult? Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult? Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
  }) {
    return inputPhoneNumberSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
    TResult Function(_InputOtpInitial value)? inputOtpInitial,
    TResult Function(_InputOtpValidationInProgress value)?
        inputOtpValidationInProgress,
    TResult Function(_InputOtpValidationSuccess value)?
        inputOtpValidationSuccess,
    TResult Function(_InputOtpValidationFailure value)?
        inputOtpValidationFailure,
    required TResult orElse(),
  }) {
    if (inputPhoneNumberSuccess != null) {
      return inputPhoneNumberSuccess(this);
    }
    return orElse();
  }
}

abstract class _InputPhoneNumberSuccess implements SetupState {
  const factory _InputPhoneNumberSuccess(final String phoneNumber) =
      _$_InputPhoneNumberSuccess;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_InputPhoneNumberSuccessCopyWith<_$_InputPhoneNumberSuccess>
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
    required TResult Function(String phoneNumber, bool canSubmit)
        inputPhoneNumberInitial,
    required TResult Function(String phoneNumber)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber) inputPhoneNumberSuccess,
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
    TResult? Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult? Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    TResult Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    required TResult Function(InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberVerifyInProgress value)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputPhoneNumberSuccess value)
        inputPhoneNumberSuccess,
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
    TResult? Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    TResult Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    required TResult Function(String phoneNumber, bool canSubmit)
        inputPhoneNumberInitial,
    required TResult Function(String phoneNumber)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber) inputPhoneNumberSuccess,
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
    TResult? Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult? Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    TResult Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    required TResult Function(InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberVerifyInProgress value)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputPhoneNumberSuccess value)
        inputPhoneNumberSuccess,
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
    TResult? Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    TResult Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    required TResult Function(String phoneNumber, bool canSubmit)
        inputPhoneNumberInitial,
    required TResult Function(String phoneNumber)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber) inputPhoneNumberSuccess,
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
    TResult? Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult? Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    TResult Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    required TResult Function(InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberVerifyInProgress value)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputPhoneNumberSuccess value)
        inputPhoneNumberSuccess,
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
    TResult? Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    TResult Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    required TResult Function(String phoneNumber, bool canSubmit)
        inputPhoneNumberInitial,
    required TResult Function(String phoneNumber)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(String phoneNumber, Failure failure)
        inputPhoneNumberFailure,
    required TResult Function(String phoneNumber) inputPhoneNumberSuccess,
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
    TResult? Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult? Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult? Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult? Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    TResult Function(String phoneNumber, bool canSubmit)?
        inputPhoneNumberInitial,
    TResult Function(String phoneNumber)? inputPhoneNumberVerifyInProgress,
    TResult Function(String phoneNumber, Failure failure)?
        inputPhoneNumberFailure,
    TResult Function(String phoneNumber)? inputPhoneNumberSuccess,
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
    required TResult Function(InputPhoneNumberInitial value)
        inputPhoneNumberInitial,
    required TResult Function(_InputPhoneNumberVerifyInProgress value)
        inputPhoneNumberVerifyInProgress,
    required TResult Function(_InputPhoneNumberFailure value)
        inputPhoneNumberFailure,
    required TResult Function(_InputPhoneNumberSuccess value)
        inputPhoneNumberSuccess,
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
    TResult? Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult? Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult? Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult? Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
    TResult Function(InputPhoneNumberInitial value)? inputPhoneNumberInitial,
    TResult Function(_InputPhoneNumberVerifyInProgress value)?
        inputPhoneNumberVerifyInProgress,
    TResult Function(_InputPhoneNumberFailure value)? inputPhoneNumberFailure,
    TResult Function(_InputPhoneNumberSuccess value)? inputPhoneNumberSuccess,
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
