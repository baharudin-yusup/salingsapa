import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';
import '../models/contact_model.dart';
import '../models/user_model.dart';

abstract class ContactRemoteDataSource {
  Future<Map<String, String?>> getProfilePictureUrls();

  Future<List<BasicUserModel>> getRemoteContacts(List<ContactModel> contacts);
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

  @override
  Future<List<BasicUserModel>> getRemoteContacts(
      List<ContactModel> contacts) async {
    final contactsPhoneNumber =
        contacts.map((contact) => contact.phoneNumber.raw);

    final collectionRef = _firestore.collection('users');
    final snapshots = await collectionRef
        .where('phoneNumber', whereIn: contactsPhoneNumber)
        .get();

    final result = <BasicUserModel>[];
    for (var element in snapshots.docs) {
      final json = element.data();
      final model = BasicUserModel.fromJson(json);
      result.add(model);
    }

    Logger.print(
        'query from ${contacts.length} local contact and get ${result.length} remote contact');
    return result;
  }
}
