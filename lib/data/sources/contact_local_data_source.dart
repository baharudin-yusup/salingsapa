import 'package:flutter_contacts/flutter_contacts.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';
import '../models/contact_model.dart';
import '../plugins/phone_number_formatter_plugin.dart';

abstract class ContactLocalDataSource {
  Future<void> init();

  Future<List<ContactModel>> getContactList();
}

class ContactLocalDataSourceImpl implements ContactLocalDataSource {
  final PhoneNumberFormatterPlugin _phoneNumberFormatterPlugin;

  const ContactLocalDataSourceImpl(this._phoneNumberFormatterPlugin);

  @override
  Future<void> init() async {
    await _phoneNumberFormatterPlugin.init();
  }

  @override
  Future<List<ContactModel>> getContactList() async {
    try {
      final contacts = await FlutterContacts.getContacts(withProperties: true);

      if (contacts.isEmpty) {
        return [];
      }
      final filteredContacts =
          contacts.where((element) => element.phones.isNotEmpty).toList();

      final List<ContactModel> output = [];

      for (final filteredContact in filteredContacts) {
        try {
          final phoneNumber = await _phoneNumberFormatterPlugin.build(
              phoneNumber: filteredContact.phones.first.number);
          output.add(ContactModel(
            name: filteredContact.displayName,
            phoneNumber: phoneNumber,
          ));
        } catch (error) {
          Logger.error(error, event: 'adding contact');
        }
      }

      return output;
    } catch (error) {
      Logger.error(error,
          event: 'getting local contact list (local data source)');
      throw CacheException();
    }
  }
}
