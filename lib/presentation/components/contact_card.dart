import 'package:flutter/material.dart';
import 'package:salingsapa/domain/entities/contact.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;

  const ContactCard(
    this.contact, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contact.name),
      subtitle: Text(contact.phoneNumber),
    );
  }
}
