import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:salingsapa/core/errors/exceptions.dart';
import 'package:salingsapa/data/models/contact_model.dart';

import '../../core/utils/logger.dart';

abstract class ContactLocalDataSource {
  Future<List<ContactModel>> getContactList();
}

class ContactLocalDataSourceImpl implements ContactLocalDataSource {
  ContactLocalDataSourceImpl();

  @override
  Future<List<ContactModel>> getContactList() async {
    try {
      final contacts = await FlutterContacts.getContacts(withProperties: true);
      return contacts
          .map(
            (e) => ContactModel(
              name: e.displayName,
              phoneNumber: e.phones.first.number,
              profilePictureUrl: null,
            ),
          )
          .toList();
    } catch (error) {
      Logger.error(error,
          event: 'getting local contact list (local data source)');
      throw CacheException();
    }
  }
}
