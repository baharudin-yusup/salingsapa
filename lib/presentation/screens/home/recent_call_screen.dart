import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

import '../../../core/errors/failure.dart';
import '../../../core/injection_container.dart';
import '../../../domain/entities/invitation.dart';
import '../../blocs/contact_list/contact_list_bloc.dart';
import '../../blocs/recent_call/recent_call_bloc.dart';
import '../../components/intuitive_floating_action_button.dart';
import '../../components/intuitive_scaffold.dart';
import '../../components/invitation_card.dart';
import '../../components/no_contact_access_button.dart';
import '../../services/navigator_service.dart';
import '../../services/theme_service.dart';
import '../../services/ui_service.dart';
import '../video_call/video_call_screen.dart';

class RecentCallScreen extends StatelessWidget {
  static const routeName = '/history';

  const RecentCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecentCallBloc, RecentCallState>(
      listener: (context, state) {
        final uiService = sl<UiService>();
        state.maybeWhen(
          actionInProgress: (invitations, calls) {
            uiService.showLoading();
          },
          acceptInvitationSuccess: (_, __, room) {
            uiService.hideLoading();
            final navigatorService = sl<NavigatorService>();
            navigatorService.pushNamed(VideoCallScreen.routeName,
                arguments: room);
          },
          actionFailure: (_, __, failure) {
            uiService.hideLoading();
            uiService.showErrorMessage(
              ErrorData(message: failure.errorMessage),
            );
          },
          orElse: () {
            uiService.hideLoading();
          },
        );
      },
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
          builder: (context) {
            return BlocBuilder<ContactListBloc, ContactListState>(
              builder: (_, contactListState) {
                if (contactListState.isPermissionValid == null) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }

                if (!(contactListState.isPermissionValid ?? false)) {
                  final ContactListBloc contactListBloc = context.read();
                  return NoContactAccessButton(
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

                return RefreshIndicator.adaptive(
                  edgeOffset: MediaQuery.of(context).padding.top,
                  onRefresh: () async {},
                  child: showInvitationList(context),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget showInvitationList(BuildContext context) {
    return BlocBuilder<RecentCallBloc, RecentCallState>(
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

            return ListView.separated(
              padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace)
                  .add(MediaQuery.of(context).padding)
                  .add(
                    EdgeInsets.only(
                      bottom: Platform.isAndroid
                          ? IntuitiveUiConstant.hugeSpace
                          : 0,
                    ),
                  ),
              itemCount: invitations.length,
              itemBuilder: (context, index) {
                final invitation = invitations[index];

                return BlocBuilder<ContactListBloc, ContactListState>(
                  builder: (context, contactListState) {
                    return InvitationCard(
                      invitation,
                      onTap: (selectedInvitation) => context
                          .read<RecentCallBloc>()
                          .add(RecentCallEvent.invitationAccepted(invitation)),
                    );
                  },
                );
              },
              separatorBuilder: (_, __) {
                if (Platform.isIOS) {
                  return const Divider(height: 0);
                }

                return const SizedBox(
                  height: IntuitiveUiConstant.smallSpace,
                );
              },
            );
          },
        );
      },
    );
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
