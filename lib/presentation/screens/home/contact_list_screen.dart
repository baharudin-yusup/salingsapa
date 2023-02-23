import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/presentation/blocs/contact_list/contact_list_bloc.dart';
import 'package:salingsapa/presentation/components/contact_card.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold.dart';

import '../../../domain/entities/contact.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactListBloc, ContactListState>(
      builder: (context, state) {
        return IntuitiveScaffold(child: buildContactList(state.contacts));
      },
    );
  }

  Widget buildContactList(List<Contact> contacts) {
    return ListView(
      children: contacts.map((contact) => ContactCard(contact)).toList(),
    );
  }
}
