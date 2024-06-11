import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/invitation.dart';
import '../services/theme_service.dart';
import '../utils/app_localizations.dart';

class InvitationCard extends StatelessWidget {
  final Invitation invitation;
  final void Function(Invitation invitation) onTap;

  const InvitationCard(
    this.invitation, {
    super.key,
    required this.onTap,
  });

  bool get isValid =>
      DateTime.now().isBefore(invitation.validUntil) &&
      invitation.senderUserInformation.userId != invitation.receiverUserId &&
      !invitation.isRejected &&
      !invitation.isAccepted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: isValid ? () => onTap(invitation) : null,
      selected: isValid,
      dense: false,
      title: showCallerName(context),
      leading: showProfilePicture(),
      subtitle: showDescription(context),
      trailing: isValid ? showCallIcon() : null,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: IntuitiveUiConstant.normalSpace,
        vertical: IntuitiveUiConstant.tinySpace,
      ),
      tileColor: context.colorScheme().tertiary.withOpacity(0.1),
      iconColor: context.colorScheme().onTertiaryContainer,
      selectedTileColor: context.colorScheme().primaryContainer,
      selectedColor: context.colorScheme().onPrimaryContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            IntuitiveUiConstant.normalRadius,
          ),
        ),
      ),
      style: ListTileStyle.list,
    );
  }

  Widget? showProfilePicture() {
    CachedNetworkImageProvider? profilePicture;
    // TODO: Enhance this
    final profilePictureUrl = invitation.participants
        .where((participant) =>
            participant.userId != invitation.receiverUserId &&
            participant.profilePictureUrl != null)
        .firstOrNull
        ?.profilePictureUrl;
    if (profilePictureUrl != null) {
      profilePicture = CachedNetworkImageProvider(profilePictureUrl);
    }

    return LayoutBuilder(builder: (context, constraints) {
      final radius = constraints.maxHeight / 2;
      return CircleAvatar(
        radius: radius + 1,
        child: CircleAvatar(
          foregroundImage: profilePicture,
          backgroundColor: context.colorScheme().primary.withOpacity(0.1),
          radius: radius,
          child: const Icon(Icons.person_outline_rounded),
        ),
      );
    });
  }

  Widget showCallerName(BuildContext context) {
    // TODO: Enhance this
    final senderName = invitation.participants
        .where((participant) => participant.userId != invitation.receiverUserId)
        .map((participant) => participant.name ?? participant.phoneNumber)
        .join(',');

    return Text(senderName);
  }

  Widget showCallIcon() {
    return const Icon(Icons.call_rounded);
  }

  Widget showDescription(BuildContext context) {
    final difference = DateTime.now().difference(invitation.createdAt);
    final isDaySame = DateTime.now().day == invitation.createdAt.day;
    final daysDifference = difference.inDays;
    late final DateFormat dateFormat;
    if (daysDifference < 1 && isDaySame) {
      dateFormat = DateFormat('HH.mm');
    } else if (daysDifference < 7) {
      dateFormat = DateFormat('EEEE');
    } else {
      dateFormat = DateFormat('dd/MM/yyyy');
    }

    final createdAt = dateFormat.format(invitation.createdAt.toLocal());
    if (isValid) {
      return Row(
        children: [
          const Icon(Icons.videocam_rounded),
          const SizedBox(width: 3),
          Text(
            AppLocalizations.of(context)!.incomingVideoCall,
            overflow: TextOverflow.ellipsis,
          )
        ],
      );
    }

    return Row(
      children: [
        const Icon(Icons.videocam_rounded),
        const SizedBox(width: 3),
        Text(AppLocalizations.of(context)!.callEnded),
        const Spacer(),
        Text(createdAt),
      ],
    );
  }
}
