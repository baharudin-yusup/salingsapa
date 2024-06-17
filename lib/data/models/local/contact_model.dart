import 'phone_number_model.dart';

class ContactModel {
  final String id;
  final String? profilePictureUrl;
  final String name;
  final PhoneNumberModel phoneNumber;
  final bool isRegistered;

  ContactModel({
    required this.id,
    required this.name,
    required this.phoneNumber,
    this.profilePictureUrl,
    this.isRegistered = false,
  });
}
