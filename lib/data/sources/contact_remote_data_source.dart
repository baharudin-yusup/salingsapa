import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';

abstract class ContactRemoteDataSource {
  Future<Map<String, String?>> getProfilePictureUrls();
}

class ContactRemoteDataSourceImpl implements ContactRemoteDataSource {
  final FirebaseFirestore _firestore;

  ContactRemoteDataSourceImpl(this._firestore);
  @override
  Future<Map<String, String?>> getProfilePictureUrls() async {
    try {
      final collectionRef = _firestore.collection('users');
      final snapshots = await collectionRef.get();

      final result = <String, String?>{};
      for (var element in snapshots.docs) {
        final data = element.data();
        final phoneNumber = data['phoneNumber'];
        final profilePictureUrl = data['profilePictureUrl'];

        result[phoneNumber] = profilePictureUrl;
      }

      return result;
    } catch (error) {
      Logger.error(error, event: 'getting profile picture urls');
      throw ServerException();
    }
  }
}
