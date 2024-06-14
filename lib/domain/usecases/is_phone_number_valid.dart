import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/phone_number.dart';
import '../repositories/general_repository.dart';
import 'use_case.dart';

class IsPhoneNumberValid extends UseCase<PhoneNumber, bool> {
  final GeneralRepository _repository;

  const IsPhoneNumberValid(this._repository);

  @override
  Future<Either<Failure, bool>> call(PhoneNumber param) async {
    return await _repository.isPhoneNumberValid(param);
  }
}
