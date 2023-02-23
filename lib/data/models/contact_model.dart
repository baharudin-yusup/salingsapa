import 'package:flutter_contacts/flutter_contacts.dart' as fc;
import 'package:salingsapa/domain/entities/contact.dart';

typedef ContactModel = fc.Contact;

extension ContactModelToEntity on ContactModel {
  Contact toEntity() {
    return Contact(
      name: displayName,
      phoneNumber: phones.first.number,
    );
  }
}
