import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../domain/entities/contact.dart';
import '../../blocs/contact_list/contact_list_bloc.dart';
import '../../components/contact_card.dart';
import '../../components/intuitive_scaffold.dart';
import '../../components/show_error_message.dart';
import '../../services/theme_service.dart';
import '../video_call/video_call_screen.dart';

class ContactListScreen extends StatelessWidget {
  static const routeName = '/contacts';

  const ContactListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactListBloc, ContactListState>(
      bloc: context.read<ContactListBloc>()
        ..add(const ContactListEvent.refreshPulled()),
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            startVideoCallSuccess: (_, contact, __) => Navigator.pushNamed(
                context, VideoCallScreen.routeName, arguments: contact),
            startVideoCallFailure: (errorMessage, _, __) =>
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
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded),
              ),
            ],
          ),
          child: state.maybeMap(
            loadSuccess: (_) => buildContactList(state.contacts),
            loadFailure: (_) => buildContactList(state.contacts),
            orElse: () => buildLoadingUi(),
          ),
        );
      },
    );
  }

  Widget buildLoadingUi() {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  Widget buildContactList(List<Contact> contacts) {
    if (contacts.isEmpty) {
      return buildNoContactsUi();
    }
    return ListView.separated(
      padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
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
