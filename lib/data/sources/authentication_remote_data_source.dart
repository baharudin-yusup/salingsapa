import 'package:firebase_auth/firebase_auth.dart';
import 'package:saling_sapa/core/errors/exceptions.dart';
import 'package:saling_sapa/core/utils/logger.dart';
import 'package:saling_sapa/data/models/user_model.dart';

abstract class AuthenticationRemoteDatSource {
  Future<UserModel> verifyPhoneNumber({required String phoneNumber});

  Future<UserModel> verifyOtp({required String otp});

  Future<void> signOut();
}

class AuthenticationRemoteDatSourceImpl
    implements AuthenticationRemoteDatSource {
  final FirebaseAuth _auth;
  String _verificationId;

  AuthenticationRemoteDatSourceImpl(this._auth) : _verificationId = '';

  @override
  Future<UserModel> verifyPhoneNumber({required String phoneNumber}) async {
    PhoneAuthCredential? phoneAuthCredential;
    FirebaseAuthException? firebaseAuthException;
    try {
      await _auth.verifyPhoneNumber(
        verificationCompleted: (credential) async {
          phoneAuthCredential = credential;
        },
        verificationFailed: (error) {
          firebaseAuthException = error;
        },
        codeSent: (verificationId, _) {
          _verificationId = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          _verificationId = verificationId;
        },
      );
    } catch (error) {
      Logger.error(error, event: 'verifying phone number');
      throw ServerException();
    }

    if (firebaseAuthException != null) {
      throw ServerException();
    }

    if (phoneAuthCredential == null) {
      throw ServerException();
    }

    final user = (await _auth.signInWithCredential(phoneAuthCredential!)).user;

    if (user == null) {
      throw ServerException();
    }

    return user;
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (error) {
      Logger.error(error, event: 'signing out');
      throw ServerException();
    }
  }

  @override
  Future<UserModel> verifyOtp({required String otp}) async {
    if (_verificationId.isEmpty) {
      throw BadDataException();
    }

    final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId, smsCode: otp);

    final user = (await _auth.signInWithCredential(credential)).user;

    if (user == null) {
      throw ServerException();
    }

    return user;
  }
}
