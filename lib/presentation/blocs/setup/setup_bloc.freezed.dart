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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SetupEvent.started()';
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
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PhoneNumberChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberChangedImplCopyWith(_$PhoneNumberChangedImpl value,
          $Res Function(_$PhoneNumberChangedImpl) then) =
      __$$PhoneNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$PhoneNumberChangedImpl>
    implements _$$PhoneNumberChangedImplCopyWith<$Res> {
  __$$PhoneNumberChangedImplCopyWithImpl(_$PhoneNumberChangedImpl _value,
      $Res Function(_$PhoneNumberChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedImpl implements _PhoneNumberChanged {
  const _$PhoneNumberChangedImpl(this.phoneNumber);

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
            other is _$PhoneNumberChangedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      __$$PhoneNumberChangedImplCopyWithImpl<_$PhoneNumberChangedImpl>(
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
      _$PhoneNumberChangedImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonDonePressedImplCopyWith<$Res> {
  factory _$$ButtonDonePressedImplCopyWith(_$ButtonDonePressedImpl value,
          $Res Function(_$ButtonDonePressedImpl) then) =
      __$$ButtonDonePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ButtonDonePressedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$ButtonDonePressedImpl>
    implements _$$ButtonDonePressedImplCopyWith<$Res> {
  __$$ButtonDonePressedImplCopyWithImpl(_$ButtonDonePressedImpl _value,
      $Res Function(_$ButtonDonePressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ButtonDonePressedImpl implements _ButtonDonePressed {
  const _$ButtonDonePressedImpl();

  @override
  String toString() {
    return 'SetupEvent.buttonDonePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ButtonDonePressedImpl);
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
  const factory _ButtonDonePressed() = _$ButtonDonePressedImpl;
}

/// @nodoc
abstract class _$$OtpChangedImplCopyWith<$Res> {
  factory _$$OtpChangedImplCopyWith(
          _$OtpChangedImpl value, $Res Function(_$OtpChangedImpl) then) =
      __$$OtpChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$OtpChangedImplCopyWithImpl<$Res>
    extends _$SetupEventCopyWithImpl<$Res, _$OtpChangedImpl>
    implements _$$OtpChangedImplCopyWith<$Res> {
  __$$OtpChangedImplCopyWithImpl(
      _$OtpChangedImpl _value, $Res Function(_$OtpChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$OtpChangedImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpChangedImpl implements _OtpChanged {
  const _$OtpChangedImpl(this.otp);

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
            other is _$OtpChangedImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpChangedImplCopyWith<_$OtpChangedImpl> get copyWith =>
      __$$OtpChangedImplCopyWithImpl<_$OtpChangedImpl>(this, _$identity);

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
  const factory _OtpChanged(final String otp) = _$OtpChangedImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$OtpChangedImplCopyWith<_$OtpChangedImpl> get copyWith =>
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
abstract class _$$InputPhoneNumberInitialImplCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$InputPhoneNumberInitialImplCopyWith(
          _$InputPhoneNumberInitialImpl value,
          $Res Function(_$InputPhoneNumberInitialImpl) then) =
      __$$InputPhoneNumberInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, bool canSubmit});
}

/// @nodoc
class __$$InputPhoneNumberInitialImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$InputPhoneNumberInitialImpl>
    implements _$$InputPhoneNumberInitialImplCopyWith<$Res> {
  __$$InputPhoneNumberInitialImplCopyWithImpl(
      _$InputPhoneNumberInitialImpl _value,
      $Res Function(_$InputPhoneNumberInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? canSubmit = null,
  }) {
    return _then(_$InputPhoneNumberInitialImpl(
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

class _$InputPhoneNumberInitialImpl implements InputPhoneNumberInitial {
  const _$InputPhoneNumberInitialImpl(
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
            other is _$InputPhoneNumberInitialImpl &&
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
  _$$InputPhoneNumberInitialImplCopyWith<_$InputPhoneNumberInitialImpl>
      get copyWith => __$$InputPhoneNumberInitialImplCopyWithImpl<
          _$InputPhoneNumberInitialImpl>(this, _$identity);

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
      final bool canSubmit]) = _$InputPhoneNumberInitialImpl;

  @override
  String get phoneNumber;
  bool get canSubmit;
  @override
  @JsonKey(ignore: true)
  _$$InputPhoneNumberInitialImplCopyWith<_$InputPhoneNumberInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputPhoneNumberVerifyInProgressImplCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$InputPhoneNumberVerifyInProgressImplCopyWith(
          _$InputPhoneNumberVerifyInProgressImpl value,
          $Res Function(_$InputPhoneNumberVerifyInProgressImpl) then) =
      __$$InputPhoneNumberVerifyInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$InputPhoneNumberVerifyInProgressImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res,
        _$InputPhoneNumberVerifyInProgressImpl>
    implements _$$InputPhoneNumberVerifyInProgressImplCopyWith<$Res> {
  __$$InputPhoneNumberVerifyInProgressImplCopyWithImpl(
      _$InputPhoneNumberVerifyInProgressImpl _value,
      $Res Function(_$InputPhoneNumberVerifyInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$InputPhoneNumberVerifyInProgressImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputPhoneNumberVerifyInProgressImpl
    implements _InputPhoneNumberVerifyInProgress {
  const _$InputPhoneNumberVerifyInProgressImpl(this.phoneNumber);

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
            other is _$InputPhoneNumberVerifyInProgressImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPhoneNumberVerifyInProgressImplCopyWith<
          _$InputPhoneNumberVerifyInProgressImpl>
      get copyWith => __$$InputPhoneNumberVerifyInProgressImplCopyWithImpl<
          _$InputPhoneNumberVerifyInProgressImpl>(this, _$identity);

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
      _$InputPhoneNumberVerifyInProgressImpl;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$InputPhoneNumberVerifyInProgressImplCopyWith<
          _$InputPhoneNumberVerifyInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputPhoneNumberFailureImplCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$InputPhoneNumberFailureImplCopyWith(
          _$InputPhoneNumberFailureImpl value,
          $Res Function(_$InputPhoneNumberFailureImpl) then) =
      __$$InputPhoneNumberFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, Failure failure});
}

/// @nodoc
class __$$InputPhoneNumberFailureImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$InputPhoneNumberFailureImpl>
    implements _$$InputPhoneNumberFailureImplCopyWith<$Res> {
  __$$InputPhoneNumberFailureImplCopyWithImpl(
      _$InputPhoneNumberFailureImpl _value,
      $Res Function(_$InputPhoneNumberFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? failure = null,
  }) {
    return _then(_$InputPhoneNumberFailureImpl(
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

class _$InputPhoneNumberFailureImpl implements _InputPhoneNumberFailure {
  const _$InputPhoneNumberFailureImpl(this.phoneNumber, this.failure);

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
            other is _$InputPhoneNumberFailureImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPhoneNumberFailureImplCopyWith<_$InputPhoneNumberFailureImpl>
      get copyWith => __$$InputPhoneNumberFailureImplCopyWithImpl<
          _$InputPhoneNumberFailureImpl>(this, _$identity);

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
      _$InputPhoneNumberFailureImpl;

  @override
  String get phoneNumber;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$InputPhoneNumberFailureImplCopyWith<_$InputPhoneNumberFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputPhoneNumberSuccessImplCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$InputPhoneNumberSuccessImplCopyWith(
          _$InputPhoneNumberSuccessImpl value,
          $Res Function(_$InputPhoneNumberSuccessImpl) then) =
      __$$InputPhoneNumberSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$InputPhoneNumberSuccessImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$InputPhoneNumberSuccessImpl>
    implements _$$InputPhoneNumberSuccessImplCopyWith<$Res> {
  __$$InputPhoneNumberSuccessImplCopyWithImpl(
      _$InputPhoneNumberSuccessImpl _value,
      $Res Function(_$InputPhoneNumberSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$InputPhoneNumberSuccessImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputPhoneNumberSuccessImpl implements _InputPhoneNumberSuccess {
  const _$InputPhoneNumberSuccessImpl(this.phoneNumber);

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
            other is _$InputPhoneNumberSuccessImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPhoneNumberSuccessImplCopyWith<_$InputPhoneNumberSuccessImpl>
      get copyWith => __$$InputPhoneNumberSuccessImplCopyWithImpl<
          _$InputPhoneNumberSuccessImpl>(this, _$identity);

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
      _$InputPhoneNumberSuccessImpl;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$InputPhoneNumberSuccessImplCopyWith<_$InputPhoneNumberSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputOtpInitialImplCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$InputOtpInitialImplCopyWith(_$InputOtpInitialImpl value,
          $Res Function(_$InputOtpInitialImpl) then) =
      __$$InputOtpInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String otp});
}

/// @nodoc
class __$$InputOtpInitialImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$InputOtpInitialImpl>
    implements _$$InputOtpInitialImplCopyWith<$Res> {
  __$$InputOtpInitialImplCopyWithImpl(
      _$InputOtpInitialImpl _value, $Res Function(_$InputOtpInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$InputOtpInitialImpl(
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

class _$InputOtpInitialImpl implements _InputOtpInitial {
  const _$InputOtpInitialImpl(this.phoneNumber, this.otp);

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
            other is _$InputOtpInitialImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputOtpInitialImplCopyWith<_$InputOtpInitialImpl> get copyWith =>
      __$$InputOtpInitialImplCopyWithImpl<_$InputOtpInitialImpl>(
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
      _$InputOtpInitialImpl;

  @override
  String get phoneNumber;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$InputOtpInitialImplCopyWith<_$InputOtpInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputOtpValidationInProgressImplCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$InputOtpValidationInProgressImplCopyWith(
          _$InputOtpValidationInProgressImpl value,
          $Res Function(_$InputOtpValidationInProgressImpl) then) =
      __$$InputOtpValidationInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String otp});
}

/// @nodoc
class __$$InputOtpValidationInProgressImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$InputOtpValidationInProgressImpl>
    implements _$$InputOtpValidationInProgressImplCopyWith<$Res> {
  __$$InputOtpValidationInProgressImplCopyWithImpl(
      _$InputOtpValidationInProgressImpl _value,
      $Res Function(_$InputOtpValidationInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$InputOtpValidationInProgressImpl(
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

class _$InputOtpValidationInProgressImpl
    implements _InputOtpValidationInProgress {
  const _$InputOtpValidationInProgressImpl(this.phoneNumber, this.otp);

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
            other is _$InputOtpValidationInProgressImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputOtpValidationInProgressImplCopyWith<
          _$InputOtpValidationInProgressImpl>
      get copyWith => __$$InputOtpValidationInProgressImplCopyWithImpl<
          _$InputOtpValidationInProgressImpl>(this, _$identity);

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
      _$InputOtpValidationInProgressImpl;

  @override
  String get phoneNumber;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$InputOtpValidationInProgressImplCopyWith<
          _$InputOtpValidationInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputOtpValidationSuccessImplCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$InputOtpValidationSuccessImplCopyWith(
          _$InputOtpValidationSuccessImpl value,
          $Res Function(_$InputOtpValidationSuccessImpl) then) =
      __$$InputOtpValidationSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String otp});
}

/// @nodoc
class __$$InputOtpValidationSuccessImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$InputOtpValidationSuccessImpl>
    implements _$$InputOtpValidationSuccessImplCopyWith<$Res> {
  __$$InputOtpValidationSuccessImplCopyWithImpl(
      _$InputOtpValidationSuccessImpl _value,
      $Res Function(_$InputOtpValidationSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$InputOtpValidationSuccessImpl(
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

class _$InputOtpValidationSuccessImpl implements _InputOtpValidationSuccess {
  const _$InputOtpValidationSuccessImpl(this.phoneNumber, this.otp);

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
            other is _$InputOtpValidationSuccessImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputOtpValidationSuccessImplCopyWith<_$InputOtpValidationSuccessImpl>
      get copyWith => __$$InputOtpValidationSuccessImplCopyWithImpl<
          _$InputOtpValidationSuccessImpl>(this, _$identity);

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
      _$InputOtpValidationSuccessImpl;

  @override
  String get phoneNumber;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$InputOtpValidationSuccessImplCopyWith<_$InputOtpValidationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputOtpValidationFailureImplCopyWith<$Res>
    implements $SetupStateCopyWith<$Res> {
  factory _$$InputOtpValidationFailureImplCopyWith(
          _$InputOtpValidationFailureImpl value,
          $Res Function(_$InputOtpValidationFailureImpl) then) =
      __$$InputOtpValidationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String otp, Failure failure});
}

/// @nodoc
class __$$InputOtpValidationFailureImplCopyWithImpl<$Res>
    extends _$SetupStateCopyWithImpl<$Res, _$InputOtpValidationFailureImpl>
    implements _$$InputOtpValidationFailureImplCopyWith<$Res> {
  __$$InputOtpValidationFailureImplCopyWithImpl(
      _$InputOtpValidationFailureImpl _value,
      $Res Function(_$InputOtpValidationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
    Object? failure = null,
  }) {
    return _then(_$InputOtpValidationFailureImpl(
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

class _$InputOtpValidationFailureImpl implements _InputOtpValidationFailure {
  const _$InputOtpValidationFailureImpl(
      this.phoneNumber, this.otp, this.failure);

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
            other is _$InputOtpValidationFailureImpl &&
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
  _$$InputOtpValidationFailureImplCopyWith<_$InputOtpValidationFailureImpl>
      get copyWith => __$$InputOtpValidationFailureImplCopyWithImpl<
          _$InputOtpValidationFailureImpl>(this, _$identity);

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
      _$InputOtpValidationFailureImpl;

  @override
  String get phoneNumber;
  String get otp;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$InputOtpValidationFailureImplCopyWith<_$InputOtpValidationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
