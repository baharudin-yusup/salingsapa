part of 'setup_bloc.dart';

@freezed
class SetupState with _$SetupState {
  /// Handle step-1
  const factory SetupState.changePhoneNumberSuccess(
      [@Default('') String phoneNumber]) = ChangePhoneNumberSuccess;

  const factory SetupState.pickCountrySuccess(CountryCode countryCode) =
      PickCountrySuccess;

  const factory SetupState.changeDialCodeSuccess(
      String dialCode, CountryCode? countryCode) = ChangeDialCodeSuccess;

  const factory SetupState.validatePhoneNumberFormatFailure(
      [@Default(null) Failure? failure]) = _ValidatePhoneNumberFormatFailure;

  const factory SetupState.validatePhoneNumberFormatSuccess() =
      _ValidatePhoneNumberFormatSuccess;

  const factory SetupState.verifyPhoneNumberInProgress() =
      _VerifyPhoneNumberInProgress;

  const factory SetupState.verifyPhoneNumberFailure(Failure failure) =
      _VerifyPhoneNumberFailure;

  const factory SetupState.inputPhoneNumberVerifySuccess(
      PhoneNumber phoneNumber) = _InputPhoneNumberVerifySuccess;

  /// Handle step-2
  const factory SetupState.inputOtpInitial(PhoneNumber phoneNumber,
      [@Default('') String otp]) = _InputOtpInitial;

  const factory SetupState.inputOtpValidationInProgress(
      PhoneNumber phoneNumber, String otp) = _InputOtpValidationInProgress;

  const factory SetupState.inputOtpValidationSuccess(
      PhoneNumber phoneNumber, String otp) = _InputOtpValidationSuccess;

  const factory SetupState.inputOtpValidationFailure(
          PhoneNumber phoneNumber, String otp, Failure failure) =
      _InputOtpValidationFailure;

  // Handle resend otp
  const factory SetupState.resendOtpInProgress(
      PhoneNumber phoneNumber, String otp) = _ResendOtpInProgress;

  const factory SetupState.resendOtpSuccess(
      PhoneNumber phoneNumber, String otp) = _ResendOtpSuccess;

  const factory SetupState.resendOtpFailure(
      PhoneNumber phoneNumber, String otp, Failure failure) = _ResendOtpFailure;

  /// Handle auto sign in
  const factory SetupState.autoSignInSuccess(
      PhoneNumber phoneNumber, User user) = _AutoSignInSuccess;
}

extension SetupStateChecker on SetupState {
  bool get isAbleToSubmitOtp {
    return maybeMap(
      inputOtpInitial: (state) => state.otp.length == 6,
      orElse: () => false,
    );
  }
}
