import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/domain/entities/contact.dart';

import '../../../injection_container.dart';
import '../../blocs/create_room/create_room_bloc.dart';
import '../../services/navigator_service.dart';
import '../../services/theme_service.dart';
import '../../utils/dimension.dart';
import '../video_call/video_call_screen.dart';

class CreateRoomScreen extends StatelessWidget {
  static const routeName = '/create-room';

  const CreateRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<CreateRoomBloc, CreateRoomState>(
        listener: (context, state) {
          state.maybeMap(
            failure: (state) {
              _showErrorDialog(context, state.contact).then((_) {
                final NavigatorService navigatorService = sl();
                navigatorService.pop();
              });
            },
            success: (state) {
              final NavigatorService navigatorService = sl();
              navigatorService.pushReplacementNamed(VideoCallScreen.routeName,
                  arguments: state.room);
            },
            orElse: () {},
          );
        },
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: context.maxHeight * 0.3),
            child: BlocBuilder<CreateRoomBloc, CreateRoomState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      foregroundImage:
                          buildProfilePicture(state.contact.profilePictureUrl),
                      backgroundColor:
                          context.colorScheme().primary.withOpacity(0.1),
                      radius: context.maxWidth / 2 * 0.6,
                      child: const Icon(Icons.person_outline_rounded),
                    ),
                    const SizedBox(height: 20),
                    Text(state.contact.name,
                        style: context.textTheme().titleLarge),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox.square(
                            dimension: 10,
                            child: CircularProgressIndicator.adaptive(
                                strokeWidth: 1)),
                        const SizedBox(width: 15),
                        Text('Calling ${state.contact.phoneNumber}...'),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  ImageProvider? buildProfilePicture(String? url) {
    if (url == null) return null;

    return CachedNetworkImageProvider(url);
  }

  Future<void> _showErrorDialog(BuildContext context, Contact contact) async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error calling ${contact.name}'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                final NavigatorService navigatorService = sl();
                navigatorService.pop();
              },
            ),
          ],
        );
      },
    );
  }
}
