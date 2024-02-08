import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';
import '../constants/firestore_constant.dart';
import '../models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<void> updateInitialData({
    required String userId,
    required String fcmToken,
  });

  Future<String> updateName({
    required String name,
  });

  Future<String> updateProfilePicture({
    required Uint8List imageBytes,
  });

  Stream<UserModel?> get onUserStateChanged;

  Future<UserModel?> getCurrentUser();

  Future<bool> deleteAccount();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseStorage _storage;

  UserRemoteDataSourceImpl(this._firestore, this._auth, this._storage);

  @override
  Future<void> updateInitialData(
      {required String userId, required String fcmToken}) async {
    final documentSnapshot = await _getUserDocumentSnapshot(userId);

    final data = {
      ...documentSnapshot.data(),
      'fcmToken': fcmToken,
    };
    await documentSnapshot.reference.update(data);
  }

  @override
  Future<String> updateName({required String name}) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        throw ServerException(type: ServerExceptionType.unauthorized);
      }
      await currentUser.updateDisplayName(name);
      final documentSnapshot = await _getUserDocumentSnapshot(currentUser.uid);
      documentSnapshot.reference.update({'name': name});
      return name;
    } catch (exception) {
      Logger.error(exception, event: 'updating user name');
      if (exception is ServerException) {
        rethrow;
      }

      throw ServerException();
    }
  }

  @override
  Future<String> updateProfilePicture({
    required Uint8List imageBytes,
  }) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        throw ServerException(type: ServerExceptionType.unauthorized);
      }

      // Create a storage reference from our app
      final storageRef = _storage.ref();
      final profilePictureRef =
          storageRef.child('${currentUser.uid}/profile-picture.jpeg');

      final metadata = SettableMetadata(contentType: 'image/jpeg');
      final uploadTask = await profilePictureRef.putData(imageBytes, metadata);

      if (uploadTask.state != TaskState.success) {
        throw ServerException();
      }

      final profilePictureUrl = await profilePictureRef.getDownloadURL();
      await currentUser.updatePhotoURL(profilePictureUrl);

      final documentSnapshot = await _getUserDocumentSnapshot(currentUser.uid);
      documentSnapshot.reference
          .update({'profilePictureUrl': profilePictureUrl});
      return profilePictureUrl;
    } catch (exception) {
      if (exception is ServerException) {
        rethrow;
      }

      throw ServerException();
    }
  }

  Future<QueryDocumentSnapshot<Map<String, dynamic>>> _getUserDocumentSnapshot(
      String userId) async {
    late final QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot;
    await _firestore
        .collection('users')
        .where('userId', isEqualTo: userId)
        .get()
        .then((snapshot) {
      if (snapshot.size == 1) {
        documentSnapshot = snapshot.docs.first;
      } else {
        throw ServerException(
            message: 'User document size is ${snapshot.size}');
      }
    });

    return documentSnapshot;
  }

  @override
  Stream<UserModel?> get onUserStateChanged => _auth.userChanges();

  @override
  Future<UserModel?> getCurrentUser() async {
    final user = _auth.currentUser;

    if (user == null) {
      return null;
    }

    return user;
  }

  @override
  Future<bool> deleteAccount() async {
    final user = _auth.currentUser;

    if (user == null) {
      throw ServerException();
    }

    final userId = user.uid;

    final userQueryDocumentSnapshot = (await _firestore
            .collection(FirestoreUserConstant.userCollectionName)
            .where(FirestoreUserConstant.userId, isEqualTo: userId)
            .get())
        .docs;

    if (userQueryDocumentSnapshot.isEmpty) {
      Logger.print('user document snapshot is empty!');
      throw ServerException();
    }

    if (userQueryDocumentSnapshot.length != 1) {
      Logger.print('user document snapshot is not unique!');
      throw ServerException();
    }

    final documentReference = userQueryDocumentSnapshot[0].reference;

    await documentReference.delete();

    await user.delete();

    return true;
  }
}
