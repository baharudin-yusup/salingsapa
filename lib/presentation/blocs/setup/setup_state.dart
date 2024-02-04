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

  // Handle resend otp
  const factory SetupState.resendOtpInProgress(String phoneNumber, String otp) =
      _ResendOtpInProgress;

  const factory SetupState.resendOtpSuccess(String phoneNumber, String otp) =
      _ResendOtpSuccess;

  const factory SetupState.resendOtpFailure(
      String phoneNumber, String otp, Failure failure) = _ResendOtpFailure;

  /// Handle auto sign in
  const factory SetupState.autoSignInSuccess(String phoneNumber, User user) =
      _AutoSignInSuccess;

  @override
  String toString() {
    return when(
      inputPhoneNumberInitial: (phoneNumber) {
        return '$runtimeType\t phone number: $phoneNumber\t can submit? ${isAbleToSubmitPhoneNumber ? 'yes' : 'no'}';
      },
      inputPhoneNumberVerifyInProgress: (phoneNumber) {
        return '$runtimeType\t phone number: $phoneNumber';
      },
      inputPhoneNumberFailure: (phoneNumber, failure) {
        return '$runtimeType\t phone number: $phoneNumber\t failure: $failure\t can submit? ${isAbleToSubmitPhoneNumber ? 'yes' : 'no'}';
      },
      inputPhoneNumberSuccess: (phoneNumber) {
        return '$runtimeType\t phone number: $phoneNumber';
      },
      inputOtpInitial: (phoneNumber, otp) {
        return '$runtimeType\t phone number: $phoneNumber\t otp: $otp\t can submit? ${isAbleToSubmitOtp ? 'yes' : 'no'}';
      },
      inputOtpValidationInProgress: (phoneNumber, otp) {
        return '$runtimeType\t phone number: $phoneNumber\t otp: $otp';
      },
      inputOtpValidationSuccess: (phoneNumber, otp) {
        return '$runtimeType\t phone number: $phoneNumber\t otp: $otp';
      },
      inputOtpValidationFailure: (phoneNumber, otp, failure) {
        return '$runtimeType\t phone number: $phoneNumber\t otp: $otp\t failure: $failure';
      },
      resendOtpInProgress: (phoneNumber, otp) {
        return '$runtimeType\t phone number: $phoneNumber\t otp: $otp';
      },
      resendOtpSuccess: (phoneNumber, otp) {
        return '$runtimeType\t phone number: $phoneNumber\t otp: $otp';
      },
      resendOtpFailure: (phoneNumber, otp, failure) {
        return '$runtimeType\t phone number: $phoneNumber\t otp: $otp';
      },
      autoSignInSuccess: (phoneNumber, user) {
        return '$runtimeType\t phone number: $phoneNumber';
      },
    );
  }
}

extension SetupStateChecker on SetupState {
  bool get isAbleToSubmitPhoneNumber {
    return maybeWhen(
      inputPhoneNumberInitial: (phoneNumber) {
        return phoneNumber.length >= 9;
      },
      inputPhoneNumberFailure: (phoneNumber, failure) {
        return phoneNumber.length >= 9;
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
