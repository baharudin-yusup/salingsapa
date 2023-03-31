import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:salingsapa/domain/entities/contact.dart';
import 'package:salingsapa/presentation/services/theme_service.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;
  final void Function(Contact contact)? onTap;

  const ContactCard(
    this.contact, {
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap != null ? () => onTap!(contact) : null,
      title: Text(contact.name),
      subtitle: Text(contact.phoneNumber),
      leading: showProfilePicture(),
      trailing: showCallIcon(),
      tileColor: context.colorScheme().tertiary.withOpacity(0.05),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(IntuitiveUiConstant.normalRadius))),
    );
  }

  Widget showProfilePicture() {
    CachedNetworkImageProvider? profilePicture;
    if (contact.profilePictureUrl != null) {
      profilePicture = CachedNetworkImageProvider(contact.profilePictureUrl!);
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

  Widget showCallIcon() {
    return Builder(builder: (context) {
      if (!contact.isRegistered) {
        return const Icon(
          Icons.videocam_off_outlined,
        );
      }

      return Icon(
        Icons.videocam_outlined,
        color: context.colorScheme().primary,
      );
    });
  }
}
