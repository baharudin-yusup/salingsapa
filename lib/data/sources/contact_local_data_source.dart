import 'package:flutter_contacts/flutter_contacts.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';
import '../models/contact_model.dart';

abstract class ContactLocalDataSource {
  Future<List<ContactModel>> getContactList();
}

class ContactLocalDataSourceImpl implements ContactLocalDataSource {
  ContactLocalDataSourceImpl();

  @override
  Future<List<ContactModel>> getContactList() async {
    try {
      final contacts = await FlutterContacts.getContacts(withProperties: true);

      if (contacts.isEmpty) {
        return [];
      }
      return contacts
          .where((element) => element.phones.isNotEmpty)
          .map(
            (e) => ContactModel(
              name: e.displayName,
              phoneNumber: e.phones.first.number,
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
