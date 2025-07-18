import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @contacts.
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get contacts;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @accountSettings.
  ///
  /// In en, this message translates to:
  /// **'Account Settings'**
  String get accountSettings;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @deleteMyAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete My Account'**
  String get deleteMyAccount;

  /// No description provided for @noContactsFound.
  ///
  /// In en, this message translates to:
  /// **'No Contacts Found'**
  String get noContactsFound;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @enterYourPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Phone Number'**
  String get enterYourPhoneNumber;

  /// No description provided for @verifyYourPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Verify Your Phone Number'**
  String get verifyYourPhoneNumber;

  /// No description provided for @setupScreenInfo.
  ///
  /// In en, this message translates to:
  /// **'Salingsapa will need to verify your phone number (carrier charges may apply).'**
  String get setupScreenInfo;

  /// No description provided for @otpSendToInfo.
  ///
  /// In en, this message translates to:
  /// **'We have sent you an SMS with a code to {phoneNumber}. To complete your phone number verification, please enter the 6-digit activation code.'**
  String otpSendToInfo(String phoneNumber);

  /// No description provided for @didNotReceiveCodeInfo.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive a verification code?'**
  String get didNotReceiveCodeInfo;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCode;

  /// No description provided for @recentCalls.
  ///
  /// In en, this message translates to:
  /// **'Recent Calls'**
  String get recentCalls;

  /// No description provided for @nRecentCalls.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No Recent Calls} =1{1 Recent Call} other{{count} Recent Calls}}'**
  String nRecentCalls(num count);

  /// No description provided for @newCall.
  ///
  /// In en, this message translates to:
  /// **'New Call'**
  String get newCall;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @nameTextFiledHint.
  ///
  /// In en, this message translates to:
  /// **'Input Your Name'**
  String get nameTextFiledHint;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @incomingVideoCall.
  ///
  /// In en, this message translates to:
  /// **'Join Video Call'**
  String get incomingVideoCall;

  /// No description provided for @callEnded.
  ///
  /// In en, this message translates to:
  /// **'Call Ended'**
  String get callEnded;

  /// No description provided for @unknownCallerName.
  ///
  /// In en, this message translates to:
  /// **'Unknown Caller Name'**
  String get unknownCallerName;

  /// No description provided for @endVideoCallConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'End Video Call Confirmation'**
  String get endVideoCallConfirmationTitle;

  /// No description provided for @endVideoCallConfirmationDescription.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to end this video call?'**
  String get endVideoCallConfirmationDescription;

  /// No description provided for @yesEndCall.
  ///
  /// In en, this message translates to:
  /// **'Yes, end call'**
  String get yesEndCall;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @errorMessageDefaultTitle.
  ///
  /// In en, this message translates to:
  /// **'An Error Occurred'**
  String get errorMessageDefaultTitle;

  /// No description provided for @errorMessageInvalidOtpCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP code'**
  String get errorMessageInvalidOtpCode;

  /// No description provided for @errorMessageUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get errorMessageUnknown;

  /// No description provided for @errorMessagePhoneNumberBlocked.
  ///
  /// In en, this message translates to:
  /// **'Please use another phone number or another device.'**
  String get errorMessagePhoneNumberBlocked;

  /// No description provided for @errorMessagePermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Permission Denied'**
  String get errorMessagePermissionDenied;

  /// No description provided for @errorMessageSubmitPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection or your phone number and try again.'**
  String get errorMessageSubmitPhoneNumber;

  /// No description provided for @requestPermissionContactDescription.
  ///
  /// In en, this message translates to:
  /// **'We require access to your contacts to enable seamless calling features, such as making video calls to your contacts.'**
  String get requestPermissionContactDescription;

  /// No description provided for @requestPermission.
  ///
  /// In en, this message translates to:
  /// **'Request Permission'**
  String get requestPermission;

  /// No description provided for @grantPermission.
  ///
  /// In en, this message translates to:
  /// **'Grant Permission'**
  String get grantPermission;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
