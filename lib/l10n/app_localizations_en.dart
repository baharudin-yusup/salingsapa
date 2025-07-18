// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get contacts => 'Contacts';

  @override
  String get account => 'Account';

  @override
  String get accountSettings => 'Account Settings';

  @override
  String get settings => 'Settings';

  @override
  String get deleteMyAccount => 'Delete My Account';

  @override
  String get noContactsFound => 'No Contacts Found';

  @override
  String get skip => 'Skip';

  @override
  String get done => 'Done';

  @override
  String get next => 'Next';

  @override
  String get send => 'Send';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get enterYourPhoneNumber => 'Enter Your Phone Number';

  @override
  String get verifyYourPhoneNumber => 'Verify Your Phone Number';

  @override
  String get setupScreenInfo =>
      'Salingsapa will need to verify your phone number (carrier charges may apply).';

  @override
  String otpSendToInfo(String phoneNumber) {
    return 'We have sent you an SMS with a code to $phoneNumber. To complete your phone number verification, please enter the 6-digit activation code.';
  }

  @override
  String get didNotReceiveCodeInfo => 'Didn\'t receive a verification code?';

  @override
  String get resendCode => 'Resend Code';

  @override
  String get recentCalls => 'Recent Calls';

  @override
  String nRecentCalls(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Recent Calls',
      one: '1 Recent Call',
      zero: 'No Recent Calls',
    );
    return '$_temp0';
  }

  @override
  String get newCall => 'New Call';

  @override
  String get edit => 'Edit';

  @override
  String get name => 'Name';

  @override
  String get nameTextFiledHint => 'Input Your Name';

  @override
  String get signOut => 'Sign Out';

  @override
  String get ok => 'OK';

  @override
  String get incomingVideoCall => 'Join Video Call';

  @override
  String get callEnded => 'Call Ended';

  @override
  String get unknownCallerName => 'Unknown Caller Name';

  @override
  String get endVideoCallConfirmationTitle => 'End Video Call Confirmation';

  @override
  String get endVideoCallConfirmationDescription =>
      'Are you sure you want to end this video call?';

  @override
  String get yesEndCall => 'Yes, end call';

  @override
  String get cancel => 'Cancel';

  @override
  String get errorMessageDefaultTitle => 'An Error Occurred';

  @override
  String get errorMessageInvalidOtpCode => 'Invalid OTP code';

  @override
  String get errorMessageUnknown => 'Unknown error';

  @override
  String get errorMessagePhoneNumberBlocked =>
      'Please use another phone number or another device.';

  @override
  String get errorMessagePermissionDenied => 'Permission Denied';

  @override
  String get errorMessageSubmitPhoneNumber =>
      'Please check your internet connection or your phone number and try again.';

  @override
  String get requestPermissionContactDescription =>
      'We require access to your contacts to enable seamless calling features, such as making video calls to your contacts.';

  @override
  String get requestPermission => 'Request Permission';

  @override
  String get grantPermission => 'Grant Permission';
}
