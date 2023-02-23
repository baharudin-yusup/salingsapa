import 'package:firebase_auth/firebase_auth.dart';
import 'package:salingsapa/core/errors/exceptions.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/data/models/user_model.dart';

abstract class AuthenticationRemoteDatSource {
  Future<UserModel> currentUser();

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
  Future<UserModel> currentUser() async {
    final currentUser = _auth.currentUser;

    if (currentUser == null) {
      throw ServerException();
    }

    return currentUser;
  }

  @override
  Future<UserModel> verifyPhoneNumber({required String phoneNumber}) async {
    PhoneAuthCredential? phoneAuthCredential;
    FirebaseAuthException? firebaseAuthException;

    Logger.print('Verifying phone number $phoneNumber started...');
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
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
      Logger.error(firebaseAuthException!, event: 'verifying phone number');
      throw ServerException();
    }

    if (phoneAuthCredential == null) {
      Logger.error('phoneAuthCredential is null!',
          event: 'verifying phone number');
      throw ServerException();
    }

    final user = (await _auth.signInWithCredential(phoneAuthCredential!)).user;

    if (user == null) {
      Logger.error('user is null!', event: 'verifying phone number');
      throw ServerException();
    }

    Logger.print('Verifying phone number success!');
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
