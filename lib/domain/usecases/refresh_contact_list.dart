import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/logger.dart';
import '../entities/contact.dart';
import '../repositories/contact_repository.dart';
import 'use_case.dart';

class RefreshContactList extends NoParamUseCase<List<Contact>> {
  final ContactRepository _contactRepository;
  const RefreshContactList(this._contactRepository);

  @override
  Future<Either<Failure, List<Contact>>> call() async {
    Logger.print('Handle RefreshContactList use case...');
    return await _contactRepository.getContactList();
  }
}
