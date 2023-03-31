import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/data/extensions/to_phone_number.dart';
import 'package:salingsapa/domain/entities/video_call_invitation.dart';
import 'package:salingsapa/presentation/blocs/contact_list/contact_list_bloc.dart';
import 'package:salingsapa/presentation/blocs/recent_call/recent_call_bloc.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold/intuitive_floating_action_button.dart';
import 'package:salingsapa/presentation/components/invitation_card.dart';
import 'package:salingsapa/presentation/screens/video_call_screen.dart';
import 'package:salingsapa/presentation/services/theme_service.dart';
import 'package:salingsapa/presentation/utils/app_localizations.dart';

import '../../../core/errors/failures.dart';
import '../../../domain/entities/call_info.dart';
import '../../../domain/entities/contact.dart';

class RecentCallScreen extends StatelessWidget {
  static const routeName = '/history';

  const RecentCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentCallBloc, RecentCallState>(
        builder: (context, state) {
      return IntuitiveScaffold(
        appBar: IntuitiveAppBar(
          middle: Text(AppLocalizations.of(context)!.recentCalls),
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
          cupertinoTrailing: TextButton(
            child: Text(AppLocalizations.of(context)!.newCall),
            onPressed: () => context
                .read<RecentCallBloc>()
                .add(const RecentCallEvent.newCallTapped()),
          ),
        ),
        floatingActionButton: IntuitiveFloatingActionButton(
            label: AppLocalizations.of(context)!.newCall,
            size: IntuitiveFloatingActionButtonSize.extended,
            icon: const Icon(Icons.video_call_outlined),
            onPressed: () {
              context
                  .read<RecentCallBloc>()
                  .add(const RecentCallEvent.newCallTapped());
            }),
        child: RefreshIndicator(
          onRefresh: () async {},
          child: showInvitationList(context),
        ),
      );
    });
  }

  Widget showInvitationList(BuildContext context) {
    return BlocBuilder<RecentCallBloc, RecentCallState>(
        builder: (context, state) {
      return StreamBuilder<Either<Failure, List<VideoCallInvitation>>>(
          stream: state.invitations,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return buildEmptyUi();
            }

            final data = snapshot.data!;

            if (data.isLeft()) {
              return buildEmptyUi();
            }

            final invitations = data.getOrElse(() => []);
            return ListView.separated(
              itemCount: invitations.length,
              itemBuilder: (context, index) {
                final invitation = invitations[index];

                return BlocBuilder<ContactListBloc, ContactListState>(
                  buildWhen: (_, currentState) => currentState.maybeMap(
                    loadSuccess: (_) => true,
                    orElse: () => false,
                  ),
                  builder: (context, contactListState) {
                    Contact? contact;
                    try {
                      contact = contactListState.contacts.firstWhere(
                          (contact) =>
                              contact.phoneNumber.toFormattedPhoneNumber() ==
                              invitation.callerPhoneNumber
                                  .toFormattedPhoneNumber());
                    } catch (_) {}

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: IntuitiveUiConstant.normalSpace),
                      child: InvitationCard(
                        invitation,
                        callerContact: contact,
                        onTap: (invitation) => Navigator.pushNamed(
                            context, VideoCallScreen.routeName,
                            arguments: invitation),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (_, __) {
                if (Platform.isIOS) {
                  return const Divider(height: 0);
                }

                return const SizedBox(
                  height: IntuitiveUiConstant.normalSpace,
                );
              },
            );
          });
    });
  }

  Widget buildEmptyUi() {
    return Builder(builder: (context) {
      return ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 2.5,
        ),
        children: [
          Center(
            child: Text(AppLocalizations.of(context)!.nRecentCalls(0)),
          ),
        ],
      );
    });
  }

  Widget buildList(List<CallInfo> calls) {
    return ListView.separated(
      itemBuilder: buildSeparator,
      separatorBuilder: buildSeparator,
      itemCount: calls.length,
    );
  }

  Widget buildSeparator(BuildContext context, int index) {
    return const SizedBox();
  }
}
