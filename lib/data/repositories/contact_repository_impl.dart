import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/contact.dart';
import '../../domain/repositories/contact_repository.dart';
import '../datasources/local/contact_local_data_source.dart';
import '../datasources/remote/contact_remote_data_source.dart';
import '../models/cache/user_cache_model.dart';
import '../models/contact_model.dart';
import '../models/phone_number_model.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactLocalDataSource _localDataSource;
  final ContactRemoteDataSource _remoteDataSource;

  ContactRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<Either<Failure, Unit>> init() async {
    try {
      await _localDataSource.init();

      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'initializing contact repository');
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<Contact>>> getContactList() async {
    var contactsModels = <ContactModel>[];
    try {
      contactsModels = await _localDataSource.getContactList();
      if (contactsModels.isEmpty) {
        return const Right([]);
      }
    } catch (error) {
      Logger.error(error, event: 'reading local contacts');
    }

    var unknownContactsProfileCache = <ContactModel>[];
    try {
      Logger.print('get unknown contacts profile cache...');
      unknownContactsProfileCache =
          _localDataSource.getUnknownContactsProfileCache(contactsModels);

      Logger.print(
          'total unknown contacts profile cache: ${unknownContactsProfileCache.length}');
      if (unknownContactsProfileCache.isNotEmpty) {
        final unknownRemoteContactsProfile = await _remoteDataSource
            .getRemoteContacts(unknownContactsProfileCache);
        await _localDataSource
            .updateCacheContactsProfile(unknownRemoteContactsProfile);
      }
    } catch (error) {
      Logger.error(error, event: 'getting unknown contacts profile cache');
    }

    var remoteContactsProfileNumber = <String>[];
    var cacheContactProfileMap = <String, UserProfileCacheModel>{};
    try {
      remoteContactsProfileNumber =
          (await _remoteDataSource.getRemoteContacts(contactsModels))
              .map((c) => c.phoneNumber)
              .toList();

      cacheContactProfileMap = _localDataSource.getCacheContactsProfileMap();
    } catch (error) {
      Logger.error(error,
          event:
              'getting remoteContactsProfileNumber & cacheContactProfileMap');
    }

    try {
      final entities = contactsModels.map((model) {
        final phoneNumber = model.phoneNumber;
        return Contact(
            name: cacheContactProfileMap[phoneNumber.raw]?.name?.value ??
                model.name,
            phoneNumber: phoneNumber.toEntity(),
            profilePictureUrl: cacheContactProfileMap[phoneNumber.raw]
                ?.profilePictureUrl
                ?.value,
            isRegistered:
                remoteContactsProfileNumber.contains(phoneNumber.raw));
      }).toList();
      entities.sort((a, b) {
        if (a.isRegistered && b.isRegistered) {
          return a.name.compareTo(b.name);
        }

        if (a.isRegistered) {
          return -1;
        }

        if (b.isRegistered) {
          return 1;
        }

        return a.name.compareTo(b.name);
      });
      return Right(entities);
    } catch (error) {
      Logger.error(error, event: 'getting contact list (repository)');
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }
}
