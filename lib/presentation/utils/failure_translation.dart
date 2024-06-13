import 'package:flutter/cupertino.dart';

import '../../data/constants/exception_code.dart';
import 'context_shortcut.dart';

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
      case AppFailureCode.submitPhoneNumberNoResponse:
        return context.localization.errorMessageSubmitPhoneNumber;
    }
  }
}
