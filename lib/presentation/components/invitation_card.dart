import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/contact.dart';
import '../../domain/entities/room.dart';
import '../services/theme_service.dart';
import '../utils/app_localizations.dart';

class InvitationCard extends StatelessWidget {
  final Contact? callerContact;
  final Room room;
  final void Function(Room room)? onTap;

  const InvitationCard(
    this.room, {
    Key? key,
    this.onTap,
    this.callerContact,
  }) : super(key: key);

  bool get isValid =>
      (room.isValid && room.validUntil.isAfter(DateTime.now()));

  @override
  Widget build(BuildContext context) {
    if (isValid) {
      playSound();
    }

    return ListTile(
      onTap: onTap != null && isValid ? () => onTap!(room) : null,
      selected: isValid,
      enabled: true,
      dense: true,
      title: showCallerName(context),
      leading: showProfilePicture(),
      subtitle: showDescription(context),
      trailing: isValid ? showCallIcon() : null,
      tileColor: context.colorScheme().tertiary.withOpacity(0.1),
      textColor: context.colorScheme().onTertiaryContainer,
      iconColor: context.colorScheme().onTertiaryContainer,
      selectedTileColor: context.colorScheme().primaryContainer,
      selectedColor: context.colorScheme().onPrimaryContainer,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(IntuitiveUiConstant.normalRadius))),
    );
  }

  Widget? showProfilePicture() {
    CachedNetworkImageProvider? profilePicture;
    if (callerContact?.profilePictureUrl != null) {
      profilePicture =
          CachedNetworkImageProvider(callerContact!.profilePictureUrl!);
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
    if (callerContact != null) {
      return Text(callerContact!.name);
    }

    return Text(AppLocalizations.of(context)!.unknownCallerName);
  }

  Widget showCallIcon() {
    return const Icon(Icons.call_rounded);
  }

  Widget showDescription(BuildContext context) {
    final difference = DateTime.now().difference(room.createdAt);
    final isDaySame = DateTime.now().day == room.createdAt.day;
    final daysDifference = difference.inDays;
    late final DateFormat dateFormat;
    if (daysDifference < 1 && isDaySame) {
      dateFormat = DateFormat('HH.mm');
    } else if (daysDifference < 7) {
      dateFormat = DateFormat('EEEE');
    } else {
      dateFormat = DateFormat('dd/MM/yyyy');
    }

    final createdAt = dateFormat.format(room.createdAt.toLocal());
    if (isValid) {
      return Row(
        children: [
          const Icon(Icons.videocam_rounded),
          const SizedBox(width: 3),
          Text(AppLocalizations.of(context)!.incomingVideoCall)
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

  void playSound() {
    FlutterRingtonePlayer.playNotification();
  }
}
