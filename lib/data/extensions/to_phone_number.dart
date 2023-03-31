extension ToPhoneNumber on String {
  String toFormattedPhoneNumber() {
    var phoneNumber = replaceAll('-', '').replaceAll(' ', '');

    if (phoneNumber.startsWith('0')) {
      phoneNumber = '+62${phoneNumber.substring(1)}';
    }

    return phoneNumber;
  }
}
