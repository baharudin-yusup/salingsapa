import 'phone_number_model.dart';

class ContactModel {
  final String? profilePictureUrl;
  final String name;
  final PhoneNumberModel phoneNumber;
  final bool isRegistered;

  ContactModel({
    required this.name,
    required this.phoneNumber,
    this.profilePictureUrl,
    this.isRegistered = false,
  });
}
