import 'package:dartz/dartz.dart';

import '../entities/contact.dart';
import '../errors/failure.dart';

abstract class ContactRepository {
  Future<Either<Failure, Unit>> init();

  Future<Either<Failure, List<Contact>>> getContactList();
}
