import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/errors/failures.dart';
import '../../../domain/entities/contact.dart';
import '../../blocs/contact_list/contact_list_bloc.dart';
import '../../components/contact_card.dart';
import '../../components/intuitive_scaffold.dart';
import '../../components/no_contact_access_ui.dart';
import '../../components/show_error_message.dart';
import '../../services/theme_service.dart';
import '../room/create_room_screen.dart';

class ContactListScreen extends StatelessWidget {
  static const routeName = '/contacts';

  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactListBloc, ContactListState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            startVideoCallSuccess: (_, contact, __, ___) => Navigator.pushNamed(
                context, CreateRoomScreen.routeName, arguments: contact),
            startVideoCallFailure: (errorMessage, _, __, ___) =>
                showErrorMessage(context, errorMessage));
      },
      buildWhen: (previousState, currentState) => currentState.maybeMap(
        startVideoCallFailure: (_) => false,
        startVideoCallSuccess: (_) => false,
        orElse: () => true,
      ),
      builder: (context, state) {
        return IntuitiveScaffold(
          appBar: IntuitiveAppBar(
            middle: Text(AppLocalizations.of(context)!.contacts),
            materialActions: [
              // TODO: Enable this later
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.search_rounded),
              // ),
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.more_vert_rounded),
              // ),
            ],
          ),
          builder: (context) {
            return state.maybeMap(
              loadSuccess: (_) => buildContactList(context, state.contacts),
              loadFailure: (state) {
                if (state.failure is PermissionFailure) {
                  final ContactListBloc contactListBloc = context.read();
                  return NoContactAccessUi(
                    onRequest: () {
                      contactListBloc.add(
                          const ContactListEvent.requestPermissionStarted());
                    },
                    onPermissionGranted: () {
                      // Do nothing for now
                    },
                    onPermissionDenied: () {
                      // Do nothing for now
                    },
                  );
                }
                return buildContactList(context, state.contacts);
              },
              orElse: () => buildLoadingUi(),
            );
          },
        );
      },
    );
  }

  Widget buildLoadingUi() {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  Widget buildContactList(BuildContext context, List<Contact> contacts) {
    if (contacts.isEmpty) {
      return buildNoContactsUi();
    }
    return ListView.separated(
      padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace)
          .add(MediaQuery.of(context).padding),
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return ContactCard(
          contacts[index],
          onTap: (contact) => context
              .read<ContactListBloc>()
              .add(ContactListEvent.selectedContactCalled(contact)),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: IntuitiveUiConstant.smallSpace,
      ),
    );
  }

  Widget buildNoContactsUi() {
    return Builder(builder: (context) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.noContactsFound),
          ],
        ),
      );
    });
  }
}
