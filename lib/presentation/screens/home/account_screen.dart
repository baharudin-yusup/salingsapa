import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/presentation/blocs/account/account_bloc.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold.dart';
import 'package:salingsapa/presentation/components/intuitive_textfield.dart';
import 'package:salingsapa/presentation/services/theme_service.dart';
import 'package:salingsapa/presentation/services/ui_service.dart';
import 'package:salingsapa/presentation/utils/app_localizations.dart';

import '../../../injection_container.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        final uiService = sl<UiService>();
        // state.map(
        //   initial: (_) {
        //     uiService.hideLoading();
        //   },
        //   updateInProgress: (_) {
        //     uiService.showLoading();
        //   },
        //   updateFailure: (_) {
        //     uiService.hideLoading();
        //   },
        // );
      },
      listenWhen: (previousState, currentState) {
        return currentState.map(
          initial: (_) => true,
          updateInProgress: (_) => previousState.name == currentState.name,
          updateFailure: (_) => true,
        );
      },
      child: IntuitiveScaffold(
        appBar: buildAppBar(context),
        child: buildBody(context),
      ),
    );
  }

  IntuitiveAppBar buildAppBar(BuildContext context) {
    return IntuitiveAppBar(
      middle: Text(AppLocalizations.of(context)!.account),
      materialActions: [
        PopupMenuButton<int>(
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 0,
                child: Text(AppLocalizations.of(context)!.signOut),
              ),
            ];
          },
          onSelected: (index) {
            switch (index) {
              case 0:
                context
                    .read<AccountBloc>()
                    .add(const AccountEvent.signOutStarted());
                break;
            }
          },
        ),
      ],
      cupertinoTrailing: TextButton(
        onPressed: () => context
            .read<AccountBloc>()
            .add(const AccountEvent.signOutStarted()),
        child: Text(AppLocalizations.of(context)!.signOut),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: IntuitiveUiConstant.normalSpace,
        vertical: IntuitiveUiConstant.normalSpace,
      ),
      children: [
        showAvatar(),
        const SizedBox(height: IntuitiveUiConstant.largeSpace),
        showNameTextField(),
        const SizedBox(height: IntuitiveUiConstant.hugeSpace),
        showPhoneNumberTextField(),
      ],
    );
  }

  Widget showAvatar() {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        final radius = (constraints.maxWidth / 2) * 0.5;
        return BlocBuilder<AccountBloc, AccountState>(
            builder: (context, state) {
          CachedNetworkImageProvider? profilePicture;
          if (state.profilePictureUrl != null) {
            profilePicture =
                CachedNetworkImageProvider(state.profilePictureUrl!);
          }

          return CircleAvatar(
            radius: radius + 1,
            child: CircleAvatar(
              backgroundImage: profilePicture,
              backgroundColor: context.colorScheme().outline,
              radius: radius,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                child: InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                  onTap: () => context
                      .read<AccountBloc>()
                      .add(const AccountEvent.pickImageStarted()),
                  child: Column(
                    children: [
                      const Spacer(),
                      Container(
                        color:
                            context.colorScheme().background.withOpacity(0.5),
                        width: radius * 2,
                        height: radius / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.camera_alt),
                            const SizedBox(
                              width: IntuitiveUiConstant.tinySpace,
                            ),
                            Text(
                              AppLocalizations.of(context)!.edit,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
      }),
    );
  }

  Widget showNameTextField() {
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: IntuitiveUiConstant.tinySpace),
            child: Text(
              AppLocalizations.of(context)!.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
            final name = state.name;
            return IntuitiveTextField(
              controller: TextEditingController(text: name),
              hint: AppLocalizations.of(context)!.nameTextFiledHint,
              onSubmitted: (name) => context
                  .read<AccountBloc>()
                  .add(AccountEvent.updateNameStarted(name)),
            );
          }),
        ],
      );
    });
  }

  Widget showPhoneNumberTextField() {
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: IntuitiveUiConstant.tinySpace),
            child: Text(
              AppLocalizations.of(context)!.phoneNumber,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
            final phoneNumber = state.phoneNumber;
            return IntuitiveTextField(
              controller: TextEditingController(text: phoneNumber),
              readOnly: true,
            );
          }),
        ],
      );
    });
  }
}
