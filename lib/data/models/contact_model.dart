class ContactModel {
  final String? profilePictureUrl;
  final String name;
  final String phoneNumber;
  final bool isRegistered;

  ContactModel({
    required this.name,
    required this.phoneNumber,
    this.profilePictureUrl,
    this.isRegistered = false,
  });
}
