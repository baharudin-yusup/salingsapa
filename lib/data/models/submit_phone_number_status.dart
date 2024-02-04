import 'package:firebase_auth/firebase_auth.dart';

abstract class SubmitPhoneNumberStatus {
  final String phoneNumber;

  SubmitPhoneNumberStatus({required this.phoneNumber});
}

class SubmitPhoneNumberStatusNoResponse extends SubmitPhoneNumberStatus {
  SubmitPhoneNumberStatusNoResponse(String phoneNumber)
      : super(phoneNumber: phoneNumber);

  @override
  String toString() {
    return 'Submit phone number $phoneNumber no response!';
  }
}

class CodeSent extends SubmitPhoneNumberStatus {
  CodeSent(String phoneNumber) : super(phoneNumber: phoneNumber);

  @override
  String toString() {
    return 'Code sent for phone number $phoneNumber';
  }
}

class SubmitPhoneNumberError extends SubmitPhoneNumberStatus {
  final FirebaseAuthException? exception;

  SubmitPhoneNumberError(this.exception, {required super.phoneNumber});

  @override
  String toString() {
    return 'Submit phone number $phoneNumber error: ${exception?.message}';
  }
}

class AutoSignIn extends SubmitPhoneNumberStatus {
  final User user;

  AutoSignIn(this.user, {required super.phoneNumber});

  @override
  String toString() {
    return 'Auto sign in for phone number $phoneNumber success!';
  }
}
