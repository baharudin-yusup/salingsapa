import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

import '../../../core/errors/failures.dart';
import '../../../data/extensions/to_phone_number.dart';
import '../../../domain/entities/contact.dart';
import '../../../domain/entities/invitation.dart';
import '../../blocs/contact_list/contact_list_bloc.dart';
import '../../blocs/recent_call/recent_call_bloc.dart';
import '../../components/intuitive_scaffold.dart';
import '../../components/intuitive_scaffold/intuitive_floating_action_button.dart';
import '../../components/invitation_card.dart';
import '../../services/theme_service.dart';
import '../../utils/app_localizations.dart';
import '../video_call/video_call_screen.dart';

class RecentCallScreen extends StatelessWidget {
  static const routeName = '/history';

  const RecentCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentCallBloc, RecentCallState>(
        builder: (context, state) {
      return IntuitiveScaffold(
        appBar: IntuitiveAppBar(
          middle: Text(AppLocalizations.of(context)!.recentCalls),
          materialActions: [
            // TODO: Add this later
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.search_rounded),
            // ),
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.more_vert_rounded),
            // ),
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
        builder: (context) => RefreshIndicator.adaptive(
          edgeOffset: MediaQuery.of(context).padding.top,
          onRefresh: () async {},
          child: showInvitationList(context),
        ),
      );
    });
  }

  Widget showInvitationList(BuildContext context) {
    return BlocConsumer<RecentCallBloc, RecentCallState>(
        listener: (context, state) {},
        buildWhen: (previous, current) =>
            previous.invitations != current.invitations,
        builder: (context, state) {
          return StreamBuilder<Either<Failure, List<Invitation>>>(
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
                // TODO: Fix this
                for (var i in invitations) {
                  if (i.shouldPlayRingtone && i.room.isValid) {
                    playSound();
                    break;
                  }
                }

                return ListView.separated(
                  padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace)
                      .add(MediaQuery.of(context).padding),
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
                                  contact.phoneNumber
                                      .toFormattedPhoneNumber() ==
                                  invitation.room.hostPhoneNumber
                                      .toFormattedPhoneNumber());
                        } catch (_) {}

                        return InvitationCard(
                          invitation.copyWith(contact),
                          onTap: (room) => Navigator.pushNamed(
                              context, VideoCallScreen.routeName,
                              arguments: room),
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

  void playSound() {
    FlutterRingtonePlayer().playNotification();
  }
}
