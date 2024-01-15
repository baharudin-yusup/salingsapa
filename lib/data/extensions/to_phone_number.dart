extension ToPhoneNumber on String {
  String toFormattedPhoneNumber({String countryCode = '+62'}) {
    var phoneNumber = replaceAll('-', '').replaceAll(' ', '');

    if (phoneNumber.startsWith('0')) {
      phoneNumber = '$countryCode${phoneNumber.substring(1)}';
    }

    return phoneNumber;
  }
}
