part of 'setup_bloc.dart';

@freezed
class SetupEvent with _$SetupEvent {
  const factory SetupEvent.started() = _Started;

  const factory SetupEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;

  const factory SetupEvent.buttonDonePressed() = _ButtonDonePressed;

  const factory SetupEvent.otpChanged(String otp) = _OtpChanged;
  const factory SetupEvent.resendOtpStarted() = _ResendOtpStarted;
}
