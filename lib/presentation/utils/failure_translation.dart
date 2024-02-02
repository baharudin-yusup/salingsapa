import 'package:flutter/cupertino.dart';

import '../../data/constants/firebase_exception_code.dart';
import 'dimension.dart';

extension AppFailureCodeTranslation on AppFailureCode {
  String translate(BuildContext context) {
    switch (this) {
      case AppFailureCode.invalidOtp:
        return context.localization.errorMessageInvalidOtpCode;
      case AppFailureCode.permissionFailure:
        return context.localization.errorMessagePermissionDenied;
      case AppFailureCode.phoneNumberBlocked:
        return context.localization.errorMessagePhoneNumberBlocked;
      case AppFailureCode.unknown:
      case AppFailureCode.autoSignInFailed:
        return context.localization.errorMessageUnknown;
    }
  }
}