part of 'setup_bloc.dart';

@freezed
class SetupEvent with _$SetupEvent {
  // Handle phone number event
  const factory SetupEvent.inputPhoneNumberStarted() = _InputPhoneNumberStarted;

  const factory SetupEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;

  const factory SetupEvent.submitPhoneNumberStarted() =
      _SubmitPhoneNumberStarted;

  // Handle OTP event
  const factory SetupEvent.inputOtpStarted() = _InputOtpStarted;

  const factory SetupEvent.otpChanged(String otp) = _OtpChanged;

  const factory SetupEvent.submitOtpStarted() = _SubmitOtpStarted;

  // Handle setup init
  const factory SetupEvent.clearSetupStarted() = _ClearSetupStarted;

  // Handle resend otp
  const factory SetupEvent.resendOtpStarted() = _ResendOtpStarted;
}
