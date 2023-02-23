import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/entities/contact.dart';
import 'package:salingsapa/domain/repositories/contact_repository.dart';

import '../../core/utils/logger.dart';

class RefreshContactList extends NoParamUseCase<List<Contact>> {
  final ContactRepository _contactRepository;
  const RefreshContactList(this._contactRepository);

  @override
  Future<Either<Failure, List<Contact>>> call() async {
    Logger.print('Handle RefreshContactList use case...');
    return await _contactRepository.getContactList();
  }
}
