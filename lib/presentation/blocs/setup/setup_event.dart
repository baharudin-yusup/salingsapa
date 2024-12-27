part of 'setup_bloc.dart';

@freezed
class SetupEvent with _$SetupEvent {
  // Handle phone number event
  const factory SetupEvent.inputPhoneNumberStarted() = _InputPhoneNumberStarted;

  const factory SetupEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;

  const factory SetupEvent.dialCodeChanged(String dialCode) = _DialCodeChanged;

  const factory SetupEvent.countryPickerSelected(CountryCode countryCode) =
      _CountryPickerSelected;

  const factory SetupEvent.validatePhoneNumberFormatStarted({
    @Default(null) String? dialCode,
    @Default(null) String? phoneNumber,
  }) = _ValidatePhoneNumberFormatStarted;

  const factory SetupEvent.submitPhoneNumberStarted(
      {String? dialCode, String? phoneNumber}) = _SubmitPhoneNumberStarted;

  // Handle OTP event
  const factory SetupEvent.inputOtpStarted() = _InputOtpStarted;

  const factory SetupEvent.otpChanged(String otp) = _OtpChanged;

  const factory SetupEvent.submitOtpStarted() = _SubmitOtpStarted;

  // Handle resend otp
  const factory SetupEvent.resendOtpStarted() = _ResendOtpStarted;
}
