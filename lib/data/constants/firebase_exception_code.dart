import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseAuthExceptionCodeTranslation on FirebaseAuthException {
  FirebaseExceptionCode get type {
    switch (code) {
      case 'invalid-verification-code':
        return FirebaseExceptionCode.invalidVerificationCode;
      default:
        return FirebaseExceptionCode.unknown;
    }
  }
}

enum FirebaseExceptionCode {
  invalidVerificationCode,
  unknown,
}

enum AppFailureCode {
  invalidOtp,
  phoneNumberBlocked,
  autoSignInFailed,
  unknown,
  permissionFailure,
}
