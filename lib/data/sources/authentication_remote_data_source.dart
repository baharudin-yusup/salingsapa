import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:rxdart/rxdart.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';
import '../constants/exception_code.dart';
import '../models/submit_phone_number_status.dart';
import '../models/user_model.dart';
import '../plugins/network_plugin.dart';

abstract class AuthenticationRemoteDatSource {
  Future<UserModel?> currentUser();

  Future<void> verifyPhoneNumber({required String phoneNumber});

  Future<UserModel> verifyOtp({required String otp});

  Future<void> resendOtp();

  Future<void> signOut();

  Stream<SubmitPhoneNumberStatus> get streamSubmitPhoneNumberStatus;
}

class AuthenticationRemoteDatSourceImpl
    implements AuthenticationRemoteDatSource {
  final auth.FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final NetworkPlugin _networkPlugin;
  String _verificationId;

  Timer? _verificationPhoneNumberTimer;
  StreamController<SubmitPhoneNumberStatus>? _submitPhoneNumberStatusController;

  AuthenticationRemoteDatSourceImpl(
      this._auth, this._firestore, this._networkPlugin)
      : _verificationId = '' {
    Logger.print('Start initializing AuthenticationRemoteDatSourceImpl');
    _auth.idTokenChanges().listen((user) async {
      try {
        final token = await user?.getIdToken();
        _networkPlugin.setAuthToken(token);
      } catch (error) {
        Logger.error(error, event: 'getting auth token');
      }
    });

    final currentUser = _auth.currentUser;
    Logger.print('Current user ID: ${currentUser?.uid}');
    currentUser
        ?.getIdToken()
        .then((token) => _networkPlugin.setAuthToken(token));
  }

  @override
  Future<UserModel?> currentUser() async {
    final currentUser = _auth.currentUser;

    if (currentUser != null) {
      return UserModel.fromFirebaseAuth(currentUser);
    }

    return null;
  }

  @override
  Future<void> verifyPhoneNumber({
    required String phoneNumber,
  }) async {
    Logger.print('Verifying phone number $phoneNumber started...');

    // Remove previous verification id
    _verificationId = '';
    _submitPhoneNumberStatusController = BehaviorSubject();
    _verificationPhoneNumberTimer =
        Timer(const Duration(seconds: 10), () async {
      _submitPhoneNumberStatusController?.sink
          .add(SubmitPhoneNumberStatusNoResponse(phoneNumber));
      await _submitPhoneNumberStatusController?.close();
    });

    // TODO: Remove this delay
    await Future.delayed(const Duration(milliseconds: 200));

    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (credential) async {
          _verificationPhoneNumberTimer?.cancel();
          final fbAuthUser =
              (await _auth.signInWithCredential(credential)).user;
          if (fbAuthUser == null) {
            _submitPhoneNumberStatusController?.sink.add(
              _verificationId.isEmpty
                  ? SubmitPhoneNumberError(null, phoneNumber: phoneNumber)
                  : CodeSent(phoneNumber),
            );
            await _submitPhoneNumberStatusController?.close();
            return;
          }
          final verifiedUser = await _updateInitialData(fbAuthUser);
          if (!(_submitPhoneNumberStatusController?.isClosed ?? true)) {
            _submitPhoneNumberStatusController?.sink
                .add(AutoSignIn(verifiedUser, phoneNumber: phoneNumber));
            await _submitPhoneNumberStatusController?.close();
          }
        },
        verificationFailed: (error) async {
          _verificationPhoneNumberTimer?.cancel();
          if (!(_submitPhoneNumberStatusController?.isClosed ?? true)) {
            _submitPhoneNumberStatusController?.sink
                .add(SubmitPhoneNumberError(error, phoneNumber: phoneNumber));
            await _submitPhoneNumberStatusController?.close();
          }
        },
        codeSent: (verificationId, _) async {
          _verificationPhoneNumberTimer?.cancel();
          Logger.print(
              'code sent verification id for phone number $phoneNumber is $verificationId');
          _verificationId = verificationId;
          if (!(_submitPhoneNumberStatusController?.isClosed ?? true)) {
            _submitPhoneNumberStatusController?.sink.add(CodeSent(phoneNumber));
            await _submitPhoneNumberStatusController?.close();
          }
        },
        codeAutoRetrievalTimeout: (verificationId) async {
          _verificationPhoneNumberTimer?.cancel();
          Logger.print(
              'code auto retrieval timeout verification id for phone number $phoneNumber is $verificationId');
          _verificationId = verificationId;
          if (!(_submitPhoneNumberStatusController?.isClosed ?? true)) {
            _submitPhoneNumberStatusController?.sink.add(CodeSent(phoneNumber));
            await _submitPhoneNumberStatusController?.close();
          }
        },
      );
    } catch (error) {
      Logger.error(error, event: 'verifying phone number');
      throw ServerException();
    }
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

    final credential = auth.PhoneAuthProvider.credential(
        verificationId: _verificationId, smsCode: otp);

    late final auth.User? fbAuthUser;

    try {
      fbAuthUser = (await _auth.signInWithCredential(credential)).user;
    } catch (error) {
      Logger.error(error, event: 'verifying otp');
      rethrow;
    }
    if (fbAuthUser == null) {
      throw ServerException();
    }

    return await _updateInitialData(fbAuthUser);
  }

  Future<UserModel> _updateInitialData(auth.User user) async {
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
      final userDoc = snapshot.docs[0].data();
      return UserModel.fromJson(userDoc);
    }

    final model = UserModel.fromFirebaseAuth(user);

    Logger.print('Add new data for user id: ${user.uid} started...');
    await collectionRef.doc(model.userId).set(model.toJson());
    Logger.print('Add new data for user id: ${user.uid} success!');

    Logger.print('Verifying phone number success!');

    return model;
  }

  @override
  Future<void> resendOtp() async {
    throw FeatureException();
  }

  @override
  Stream<SubmitPhoneNumberStatus> get streamSubmitPhoneNumberStatus {
    if (_submitPhoneNumberStatusController == null) {
      // TODO: Handle this
      throw ServerException();
    }
    return _submitPhoneNumberStatusController!.stream;
  }
}
