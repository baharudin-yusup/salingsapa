import 'package:equatable/equatable.dart';

class PhoneNumber extends Equatable {
  final String? regionCode;
  final String? national;
  final String? international;
  final String raw;

  const PhoneNumber({
    required this.regionCode,
    required this.national,
    required this.international,
    required this.raw,
  });

  @override
  List<Object?> get props => [
        regionCode,
        national,
        international,
        raw,
      ];

  @override
  String toString() {
    return international ?? national ?? raw;
  }
}
