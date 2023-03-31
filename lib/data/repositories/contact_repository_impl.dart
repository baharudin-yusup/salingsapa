import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/data/extensions/extensions.dart';
import 'package:salingsapa/data/sources/contact_local_data_source.dart';
import 'package:salingsapa/domain/entities/contact.dart';
import 'package:salingsapa/domain/repositories/contact_repository.dart';

import '../sources/contact_remote_data_source.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactLocalDataSource _localDataSource;
  final ContactRemoteDataSource _remoteDataSource;

  ContactRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<Either<Failure, List<Contact>>> getContactList() async {
    try {
      final contactModels = await _localDataSource.getContactList();
      if (contactModels.isEmpty) {
        return const Right([]);
      }

      final profilePictureUrls =
          await _remoteDataSource.getProfilePictureUrls();

      final entities = contactModels.map((model) {
        final phoneNumber = model.phoneNumber.toFormattedPhoneNumber();
        return Contact(
            name: model.name,
            phoneNumber: model.phoneNumber,
            profilePictureUrl: profilePictureUrls[phoneNumber],
            isRegistered: profilePictureUrls.containsKey(phoneNumber));
      }).toList();
      return Right(entities);
    } catch (error) {
      Logger.error(error, event: 'getting contact list (repository)');
      return Left(UnknownFailure());
    }
  }
}
