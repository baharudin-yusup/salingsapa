part of 'setup_bloc.dart';

@freezed
class SetupState with _$SetupState {
  /// Handle step-1
  const factory SetupState.inputPhoneNumberInitial(
      [@Default('') String phoneNumber]) = _InputPhoneNumberInitial;
  const factory SetupState.inputPhoneNumberFailure(
      String phoneNumber, Failure failure) = _InputPhoneNumberFailure;

  /// Handle step-2
  const factory SetupState.inputOtpInitial(String phoneNumber, String otp) =
      _InputOtpInitial;
  const factory SetupState.inputOtpValidationInProgress(
      String phoneNumber, String otp) = _InputOtpValidationInProgress;
  const factory SetupState.inputOtpValidationSuccess(
      String phoneNumber, String otp) = _InputOtpValidationSuccess;
  const factory SetupState.inputOtpValidationFailure(
          String phoneNumber, String otp, Failure failure) =
      _InputOtpValidationFailure;
}
