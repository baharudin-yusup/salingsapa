import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/phone_number.dart';
import '../repositories/general_repository.dart';

class RawPhoneNumber {
  final String phoneNumber;
  final String countryCode;

  RawPhoneNumber({
    required this.phoneNumber,
    required this.countryCode,
  });
}

class FormatPhoneNumber extends UseCase<RawPhoneNumber, PhoneNumber> {
  final GeneralRepository _repository;

  const FormatPhoneNumber(this._repository);

  @override
  Future<Either<Failure, PhoneNumber>> call(RawPhoneNumber param) async {
    return await _repository.formatPhoneNumber(param.phoneNumber, param.countryCode);
  }
}
