part of 'setup_bloc.dart';

@freezed
class SetupState with _$SetupState {
  /// Handle step-1
  const factory SetupState.inputPhoneNumberInitial(
      [@Default('') String phoneNumber]) = InputPhoneNumberInitial;

  const factory SetupState.inputPhoneNumberVerifyInProgress(
      String phoneNumber) = _InputPhoneNumberVerifyInProgress;

  const factory SetupState.inputPhoneNumberFailure(
      String phoneNumber, Failure failure) = _InputPhoneNumberFailure;

  const factory SetupState.inputPhoneNumberSuccess(String phoneNumber) =
      _InputPhoneNumberSuccess;

  /// Handle step-2
  const factory SetupState.inputOtpInitial(String phoneNumber,
      [@Default('') String otp]) = _InputOtpInitial;

  const factory SetupState.inputOtpValidationInProgress(
      String phoneNumber, String otp) = _InputOtpValidationInProgress;

  const factory SetupState.inputOtpValidationSuccess(
      String phoneNumber, String otp) = _InputOtpValidationSuccess;

  const factory SetupState.inputOtpValidationFailure(
          String phoneNumber, String otp, Failure failure) =
      _InputOtpValidationFailure;

  const factory SetupState.resendOtpInProgress(String phoneNumber, String otp) =
      _ResendOtpInProgress;

  const factory SetupState.resendOtpSuccess(String phoneNumber, String otp) =
      _ResendOtpSuccess;

  const factory SetupState.resendOtpFailure(
      String phoneNumber, String otp, Failure failure) = _ResendOtpFailure;
}

extension SetupStateChecker on SetupState {
  bool get isAbleToSubmitPhoneNumber {
    return maybeWhen(
      inputPhoneNumberInitial: (phoneNumber) {
        return phoneNumber.length > 6;
      },
      orElse: () {
        return false;
      },
    );
  }

  bool get isAbleToSubmitOtp {
    return maybeMap(
      inputOtpInitial: (state) => state.otp.length == 6,
      orElse: () => false,
    );
  }
}
