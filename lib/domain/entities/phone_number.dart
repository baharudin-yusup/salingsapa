import 'package:equatable/equatable.dart';

class PhoneNumber extends Equatable {
  final String? regionCode;
  final String? dialCode;
  final String? national;
  final String? international;
  final String raw;

  const PhoneNumber({
    required this.regionCode,
    required this.dialCode,
    required this.national,
    required this.international,
    required this.raw,
  });

  static const fresh = PhoneNumber(
        regionCode: null,
        dialCode: null,
        national: null,
        international: null,
        raw: '',
      );

  PhoneNumber copyWith({
    final String? regionCode,
    final String? dialCode,
    final String? national,
    final String? international,
    final String? raw,
  }) =>
       PhoneNumber(
        regionCode: regionCode ?? this.regionCode,
        dialCode: dialCode ?? this.dialCode,
        national: national ?? this.national,
        international: international ?? this.international,
        raw: raw ?? this.raw,
      );

  @override
  List<Object?> get props => [
        regionCode,
        dialCode,
        national,
        international,
        raw,
      ];

  @override
  String toString() {
    return international ?? national ?? raw;
  }
}
