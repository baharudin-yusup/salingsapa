import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/phone_number.dart';

part 'phone_number_model.g.dart';

@JsonSerializable()
class PhoneNumberModel extends Equatable {
  final String? regionCode;
  final String? national;
  final String? international;
  final String raw;

  const PhoneNumberModel({
    required this.regionCode,
    required this.national,
    required this.international,
    required this.raw,
  });

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneNumberModelToJson(this);

  @override
  List<Object?> get props => [
        regionCode,
        national,
        international,
        raw,
      ];
}

extension PhoneNumberModelToEntity on PhoneNumberModel {
  PhoneNumber toEntity() => PhoneNumber(
        regionCode: regionCode,
        national: national,
        international: international,
        raw: raw,
      );
}
