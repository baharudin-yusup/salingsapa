import 'package:flutter_contacts/flutter_contacts.dart';

import '../../../core/utils/logger.dart';
import '../../constants/cache_key.dart';
import '../../models/api/user_model.dart';
import '../../models/cache/string_cache_model.dart';
import '../../models/cache/user_cache_model.dart';
import '../../models/exception/exception.dart';
import '../../models/local/contact_model.dart';
import '../../plugins/phone_number_formatter_plugin.dart';
import '../cache/cache_service.dart';

abstract class ContactLocalDataSource {
  Future<void> init();

  Future<List<ContactModel>> getContactList();

  List<UserProfileCacheModel> getCacheContactsProfile();

  Map<String, UserProfileCacheModel> getCacheContactsProfileMap();

  List<ContactModel> getUnknownContactsProfileCache(
      List<ContactModel> contacts);

  Future<void> updateCacheContactsProfile(List<BasicUserModel> users);
}

class ContactLocalDataSourceImpl implements ContactLocalDataSource {
  final PhoneNumberFormatterPlugin _phoneNumberFormatterPlugin;
  final CacheService _cacheService;

  const ContactLocalDataSourceImpl(
      this._phoneNumberFormatterPlugin, this._cacheService);

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
          // TODO: Handle the case when one contact has more than one phone number
          final phoneNumber = await _phoneNumberFormatterPlugin.build(
              phoneNumber: filteredContact.phones.first.number);

          output.add(ContactModel(
            id: filteredContact.id,
            name: filteredContact.displayName,
            phoneNumber: phoneNumber,
          ));
        } catch (error) {
          Logger.error(error, event: 'reading contacts');
        }
      }

      Logger.print('Total filtered contacts: ${filteredContacts.length}');

      return output;
    } catch (error) {
      Logger.error(error,
          event: 'getting local contact list (local data source)');
      throw CacheException();
    }
  }

  @override
  List<ContactModel> getUnknownContactsProfileCache(
      List<ContactModel> contacts) {
    final cacheContactsProfileNumber = _cacheService
        .getJsonList(CacheKey.contactsProfile)
        ?.map((json) => UserProfileCacheModel.fromJson(json).phoneNumber?.value)
        .where((phoneNumber) => phoneNumber != null);

    if (cacheContactsProfileNumber == null) {
      return contacts;
    }

    final unknownContactsProfileCache = <ContactModel>[];
    for (final contact in contacts) {
      if (!cacheContactsProfileNumber.contains(contact.phoneNumber.raw)) {
        unknownContactsProfileCache.add(contact);
      }
    }

    return unknownContactsProfileCache;
  }

  @override
  Future<void> updateCacheContactsProfile(List<BasicUserModel> users) async {
    if (users.isEmpty) {
      Logger.print('users contact is empty, skipping next flow');
      return;
    }

    final cacheContactsProfile = getCacheContactsProfile();
    Logger.print(
        'current total local contact data: ${cacheContactsProfile.length}');

    for (var i = 0; i < cacheContactsProfile.length; i++) {
      final phoneNumber = cacheContactsProfile[i].phoneNumber?.value;
      if (phoneNumber == null) {
        continue;
      }

      BasicUserModel? newProfileModel;
      users.removeWhere((user) {
        if (user.phoneNumber == phoneNumber) {
          newProfileModel = user;
          return true;
        }
        return false;
      });

      if (newProfileModel != null) {
        final profile = UserProfileCacheModel(
          phoneNumber: StringCacheModel(
            value: newProfileModel!.phoneNumber,
            localValueUpdatedAt: DateTime.now(),
            remoteValueUpdatedAt: DateTime.now(),
          ),
          profilePictureUrl: newProfileModel!.profilePictureUrl != null
              ? StringCacheModel(
                  value: newProfileModel!.profilePictureUrl!,
                  localValueUpdatedAt: DateTime.now(),
                  remoteValueUpdatedAt: DateTime.now(),
                )
              : null,
          name: newProfileModel!.name != null
              ? StringCacheModel(
                  value: newProfileModel!.name!,
                  localValueUpdatedAt: DateTime.now(),
                  remoteValueUpdatedAt: DateTime.now(),
                )
              : null,
        );
        cacheContactsProfile[i] = profile;
      }
    }

    for (final newProfileModel in users) {
      final profile = UserProfileCacheModel(
        phoneNumber: StringCacheModel(
          value: newProfileModel.phoneNumber,
          localValueUpdatedAt: DateTime.now(),
          remoteValueUpdatedAt: DateTime.now(),
        ),
        profilePictureUrl: newProfileModel.profilePictureUrl != null
            ? StringCacheModel(
                value: newProfileModel.profilePictureUrl!,
                localValueUpdatedAt: DateTime.now(),
                remoteValueUpdatedAt: DateTime.now(),
              )
            : null,
        name: newProfileModel.name != null
            ? StringCacheModel(
                value: newProfileModel.name!,
                localValueUpdatedAt: DateTime.now(),
                remoteValueUpdatedAt: DateTime.now(),
              )
            : null,
      );
      cacheContactsProfile.add(profile);
    }

    Logger.print(
        'latest total local contact data: ${cacheContactsProfile.length}');

    await _cacheService.setJsonList(CacheKey.contactsProfile,
        cacheContactsProfile.map((profile) => profile.toJson()).toList());
  }

  @override
  List<UserProfileCacheModel> getCacheContactsProfile() {
    final cache = _cacheService.getJsonList(CacheKey.contactsProfile);

    if (cache == null) {
      return [];
    }

    return cache.map((json) => UserProfileCacheModel.fromJson(json)).toList();
  }

  @override
  Map<String, UserProfileCacheModel> getCacheContactsProfileMap() {
    final contactsProfile = getCacheContactsProfile();
    return {
      for (var item in contactsProfile) '${item.phoneNumber?.value}': item
    };
  }
}
