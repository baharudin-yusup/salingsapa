import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';
import '../constants/firebase_exception_code.dart';
import '../models/user_model.dart';
import '../plugins/network_plugin.dart';

abstract class AuthenticationRemoteDatSource {
  Future<UserModel?> currentUser();

  Future<UserModel> verifyPhoneNumber({required String phoneNumber});

  Future<UserModel> verifyOtp({required String otp});

  Future<void> resendOtp();

  Future<void> signOut();
}

class AuthenticationRemoteDatSourceImpl
    implements AuthenticationRemoteDatSource {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final NetworkPlugin _networkPlugin;
  String _verificationId;

  AuthenticationRemoteDatSourceImpl(
      this._auth, this._firestore, this._networkPlugin)
      : _verificationId = '' {
    _auth.idTokenChanges().listen((user) async {
      try {
        final token = await user?.getIdToken();
        _networkPlugin.setAuthToken(token);
      } catch (error) {
        Logger.error(error, event: 'getting auth token');
      }
    });

    _auth.currentUser
        ?.getIdToken()
        .then((token) => _networkPlugin.setAuthToken(token));
  }

  @override
  Future<UserModel?> currentUser() async {
    final currentUser = _auth.currentUser;
    return currentUser;
  }

  @override
  Future<UserModel> verifyPhoneNumber({required String phoneNumber}) async {
    PhoneAuthCredential? autoSignInCredential;
    FirebaseAuthException? firebaseAuthException;

    Logger.print('Verifying phone number $phoneNumber started...');

    // Remove previous verification id
    _verificationId = '';

    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (credential) {
          autoSignInCredential = credential;
        },
        verificationFailed: (error) {
          firebaseAuthException = error;
        },
        codeSent: (verificationId, _) {
          Logger.print(
              'code sent verification id for phone number $phoneNumber is $verificationId');
          _verificationId = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          Logger.print(
              'code auto retrieval timeout verification id for phone number $phoneNumber is $verificationId');
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

    if (autoSignInCredential == null) {
      Logger.error('autoSignInCredential is null',
          event: 'verifying phone number');
      throw AppFailureCode.autoSignInFailed;
    }

    final user = (await _auth.signInWithCredential(autoSignInCredential!)).user;

    if (user == null) {
      Logger.error('user is null!', event: 'verifying phone number');
      throw AppFailureCode.autoSignInFailed;
    }

    return await _updateInitialData(user);
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      Logger.print('Sign out success!');
    } catch (error) {
      Logger.error(error, event: '(data source) signing out');
      throw ServerException();
    }
  }

  @override
  Future<UserModel> verifyOtp({required String otp}) async {
    if (_verificationId.isEmpty) {
      Logger.error('verification id is empty', event: 'verifying otp');
      throw AppFailureCode.phoneNumberBlocked;
    }

    final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId, smsCode: otp);

    late final User? user;

    try {
      user = (await _auth.signInWithCredential(credential)).user;
    } catch (error) {
      Logger.error(error, event: 'verifying otp');
      rethrow;
    }
    if (user == null) {
      throw ServerException();
    }

    return await _updateInitialData(user);
  }

  Future<User> _updateInitialData(UserModel user) async {
    final collectionRef = _firestore.collection('users');
    final snapshot =
        await collectionRef.where('userId', isEqualTo: user.uid).get();

    if (snapshot.size > 1) {
      Logger.error('User id: ${user.uid} have more than 1 data in firestore',
          event: 'verifying phone number');
      throw ServerException();
    }

    if (snapshot.size == 1) {
      Logger.print('User already registered on firestore database');
      return user;
    }

    Logger.print('Add new data for user id: ${user.uid} started...');
    await collectionRef.add(user.toJson());
    Logger.print('Add new data for user id: ${user.uid} success!');

    Logger.print('Verifying phone number success!');

    return user;
  }

  @override
  Future<void> resendOtp() async {
    throw FeatureException();
  }
}
