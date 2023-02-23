import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/data/models/contact_model.dart';
import 'package:salingsapa/data/sources/contact_local_data_source.dart';
import 'package:salingsapa/domain/entities/contact.dart';
import 'package:salingsapa/domain/repositories/contact_repository.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactLocalDataSource _localDataSource;

  ContactRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, List<Contact>>> getContactList() async {
    try {
      final contactModels = await _localDataSource.getContactList();
      if (contactModels.isEmpty) {
        return const Right([]);
      }

      final entities = contactModels.map((model) => model.toEntity()).toList();
      return Right(entities);
    } catch (error) {
      Logger.error(error, event: 'getting contact list (repository)');
      return Left(UnknownFailure());
    }
  }
}
