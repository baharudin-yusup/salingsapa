part of 'setup_bloc.dart';

@freezed
class SetupState with _$SetupState {
  /// Handle step-1
  const factory SetupState.inputPhoneNumberInitial(
      [@Default('') String phoneNumber,
      @Default(null) CountryCode? countryCode]) = InputPhoneNumberInitial;

  const factory SetupState.pickCountrySuccess(
      String phoneNumber, CountryCode countryCode) = PickCountrySuccess;

  const factory SetupState.inputPhoneNumberVerifyInProgress(
    String phoneNumber,
    CountryCode countryCode,
  ) = _InputPhoneNumberVerifyInProgress;

  const factory SetupState.inputPhoneNumberFailure(
    String phoneNumber,
    CountryCode countryCode,
    Failure failure,
  ) = _InputPhoneNumberFailure;

  const factory SetupState.inputPhoneNumberSuccess(PhoneNumber phoneNumber) =
      _InputPhoneNumberSuccess;

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

  @override
  String toString() {
    return when(
      inputPhoneNumberInitial: (phoneNumber, _) {
        return '$runtimeType\t phone number: $phoneNumber\t can submit? ${isAbleToSubmitPhoneNumber ? 'yes' : 'no'}';
      },
      pickCountrySuccess: (phoneNumber, _) {
        return '$runtimeType\t phone number: $phoneNumber\t can submit? ${isAbleToSubmitPhoneNumber ? 'yes' : 'no'}';
      },
      inputPhoneNumberVerifyInProgress: (phoneNumber, _) {
        return '$runtimeType\t phone number: $phoneNumber';
      },
      inputPhoneNumberFailure: (phoneNumber, _, failure) {
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
        return '$runtimeType\t phone number: $phoneNumber\t otp: $otp'
            '\t failure: $failure';
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
      inputPhoneNumberInitial: (phoneNumber, countryCode) {
        return (phoneNumber.length >= 5) && countryCode != null;
      },
      inputPhoneNumberFailure: (phoneNumber, countryCode, _) {
        return (phoneNumber.length >= 5);
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
