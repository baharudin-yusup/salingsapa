import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/injection_container.dart';
import '../../blocs/account/account_bloc.dart';
import '../../components/intuitive_scaffold.dart';
import '../../services/navigator_service.dart';
import '../../services/ui_service.dart';
import '../../utils/context_shortcut.dart';
import 'delete_account_screen.dart';

class AccountSettingScreen extends StatelessWidget {
  static const routeName = '/users/settings';

  const AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        state.map(
          initial: (state) {},
          updateInProgress: (state) {
            final UiService uiService = sl();
            uiService.showLoading();
          },
          updateFailure: (state) {
            final UiService uiService = sl();
            uiService.hideLoading();
            uiService.showErrorMessage(ErrorData(message: state.errorMessage));
          },
          deleteAccountSuccess: (state) {},
        );
      },
      child: IntuitiveScaffold(
        appBar: IntuitiveAppBar(
          middle: Text(
            context.localization.accountSettings,
          ),
        ),
        pageConfiguration: const IntuitivePageConfiguration(
          backgroundColor: CupertinoColors.systemGroupedBackground,
        ),
        builder: (context) {
          return ListView(
            padding: context.padding,
            children: [
              CupertinoListSection.insetGrouped(
                children: [
                  CupertinoListTile(
                    trailing: Icon(Icons.adaptive.arrow_forward_rounded),
                    title: Text(context.localization.signOut),
                    onTap: () {
                      context
                          .read<AccountBloc>()
                          .add(const AccountEvent.signOutStarted());
                    },
                  ),
                ],
              ),
              CupertinoListSection.insetGrouped(
                children: [
                  CupertinoListTile(
                    trailing: Icon(Icons.adaptive.arrow_forward_rounded),
                    title: Text(context.localization.deleteMyAccount),
                    onTap: () {
                      final NavigatorService navigatorService = sl();
                      navigatorService.pushNamed(DeleteAccountScreen.routeName);
                    },
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
