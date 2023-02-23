import 'package:cloud_firestore/cloud_firestore.dart';

abstract class UserRemoteDataSource {
  Future<void> updateInitialData({
    required String userId,
    required String fcmToken,
  });
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final FirebaseFirestore _firestore;

  UserRemoteDataSourceImpl(this._firestore);

  @override
  Future<void> updateInitialData(
      {required String userId, required String fcmToken}) async {
    Map<String, dynamic> data = {};
    await _firestore
        .collection('users')
        .where('id', isEqualTo: userId)
        .get()
        .then((snapshot) {
      if (snapshot.size == 1) {
        data = snapshot.docs[0].data();
      }
    });
    await _firestore.collection('users').add({
      ...data,
      'fcmToken': fcmToken,
    });
  }
}
