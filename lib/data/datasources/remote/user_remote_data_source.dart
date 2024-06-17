import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../../core/utils/logger.dart';
import '../../constants/firestore_constant.dart';
import '../../models/api/requests/update_user_profile_request.dart';
import '../../models/api/user_model.dart';
import '../../models/exception/exception.dart';
import 'api_service.dart';

abstract class UserRemoteDataSource {
  Future<String> updateName({
    required String name,
  });

  Future<String> updateProfilePicture({
    required Uint8List imageBytes,
  });

  Future<void> updateFcmToken({
    required String token,
  });

  Stream<UserModel?> get onUserStateChanged;

  Future<UserModel?> getCurrentUser();

  Future<bool> deleteAccount();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseStorage _storage;
  final ApiService _apiService;

  UserRemoteDataSourceImpl(
    this._firestore,
    this._auth,
    this._storage,
    this._apiService,
  );

  @override
  Future<String> updateName({required String name}) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        throw const ServerException(type: ServerExceptionType.unauthorized);
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

      throw const ServerException();
    }
  }

  @override
  Future<String> updateProfilePicture({
    required Uint8List imageBytes,
  }) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        throw const ServerException(type: ServerExceptionType.unauthorized);
      }

      // Create a storage reference from our app
      final storageRef = _storage.ref();
      final profilePictureRef =
          storageRef.child('${currentUser.uid}/profile-picture.jpeg');

      final metadata = SettableMetadata(contentType: 'image/jpeg');
      final uploadTask = await profilePictureRef.putData(imageBytes, metadata);

      if (uploadTask.state != TaskState.success) {
        throw const ServerException();
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

      throw const ServerException();
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
  Stream<UserModel?> get onUserStateChanged =>
      _auth.userChanges().map((fbAuthUser) {
        if (fbAuthUser != null) {
          return UserModel.fromFirebaseAuth(fbAuthUser);
        }
        return null;
      });

  @override
  Future<UserModel?> getCurrentUser() async {
    final fbAuthUser = _auth.currentUser;

    if (fbAuthUser == null) {
      return null;
    }

    return UserModel.fromFirebaseAuth(fbAuthUser);
  }

  @override
  Future<bool> deleteAccount() async {
    final user = _auth.currentUser;

    if (user == null) {
      throw const ServerException();
    }

    final userId = user.uid;

    final userQueryDocumentSnapshot = (await _firestore
            .collection(FirestoreUserConstant.userCollectionName)
            .where(FirestoreUserConstant.userId, isEqualTo: userId)
            .get())
        .docs;

    if (userQueryDocumentSnapshot.isEmpty) {
      Logger.print('user document snapshot is empty!');
      throw const ServerException();
    }

    if (userQueryDocumentSnapshot.length != 1) {
      Logger.print('user document snapshot is not unique!');
      throw const ServerException();
    }

    final documentReference = userQueryDocumentSnapshot[0].reference;

    await documentReference.delete();

    await user.delete();

    return true;
  }

  @override
  Future<void> updateFcmToken({required String token}) async {
    if (_auth.currentUser == null) {
      throw const ServerException();
    }

    try {
      final requestBody = UpdateUserProfileRequest(
          data: UpdateUserProfileRequestData(fcmToken: token));
      await _apiService.updateUserProfile(requestBody);
    } catch (error) {
      Logger.error(error, event: 'updating fcm token');
      throw const ServerException();
    }
  }
}
