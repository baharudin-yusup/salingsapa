import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/contact.dart';
import '../../domain/repositories/contact_repository.dart';
import '../extensions/extensions.dart';
import '../sources/contact_local_data_source.dart';
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
      return Left(UnknownFailure());
    }
  }
}
