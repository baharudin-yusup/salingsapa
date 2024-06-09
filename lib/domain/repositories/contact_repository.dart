import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../entities/contact.dart';

abstract class ContactRepository {
  Future<Either<Failure, Unit>> init();

  Future<Either<Failure, List<Contact>>> getContactList();
}
