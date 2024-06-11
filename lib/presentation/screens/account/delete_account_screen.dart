import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/injection_container.dart';
import '../../blocs/account/account_bloc.dart';
import '../../blocs/open_external_link/open_external_link_bloc.dart';
import '../../components/intuitive_scaffold.dart';
import '../../services/navigator_service.dart';
import '../../services/platform_service.dart';
import '../../services/theme_service.dart';
import '../../services/ui_service.dart';
import '../../utils/context_shortcut.dart';
import '../../utils/failure_translation.dart';
import '../markdown_screen.dart';
import '../skeleton_screen.dart';

class DeleteAccountScreen extends StatelessWidget {
  static const routeName = '/account/delete';

  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<OpenExternalLinkBloc, OpenExternalLinkState>(
          listener: (context, state) {
            final UiService uiService = sl();
            state.maybeMap(
              openExternalLinkInProgress: (_) {
                uiService.showLoading();
              },
              openExternalLinkFailure: (state) {
                uiService.hideLoading();
                uiService.showErrorMessage(
                    ErrorData(message: state.failure.code.translate(context)));
              },
              openSupportSuccess: (state) {
                final NavigatorService navigatorService = sl();
                uiService.hideLoading();
                navigatorService
                    .push((context) => MarkdownScreen(state.content));
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<AccountBloc, AccountState>(
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
                uiService
                    .showErrorMessage(ErrorData(message: state.errorMessage));
              },
              deleteAccountSuccess: (value) {
                final UiService uiService = sl();
                final NavigatorService navigatorService = sl();

                uiService.hideLoading();
                uiService.resetLoading();

                navigatorService.pushNamedAndRemoveUntil(
                  RootScreen.routeName,
                  (route) => false,
                  arguments: false,
                );
              },
            );
          },
        ),
      ],
      child: IntuitiveScaffold(
        appBar: IntuitiveAppBar(
          leading: sl<PlatformService>().os == PlatformOS.iOS
              ? TextButton(
                  onPressed: () {
                    sl<NavigatorService>().pop();
                  },
                  child: Text(context.localization.cancel),
                )
              : null,
          middle: const Text('Delete My Account'),
        ),
        builder: (context) {
          return ListView(
            padding: context.padding
                .add(const EdgeInsets.all(IntuitiveUiConstant.normalSpace)),
            children: [
              _buildDeleteAccountInformation(context),
              const SizedBox(height: IntuitiveUiConstant.hugeSpace),
              _buildDeleteMyAccountButton(context),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDeleteAccountInformation(BuildContext context) {
    Widget buildPoint(String point) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 35),
            height: 22,
            width: 15,
            child: const Text('•'),
          ),
          Expanded(
            child: Text(
              point,
              style: context.textTheme().bodyMedium,
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 35,
              height: 35,
              alignment: Alignment.center,
              child: Icon(
                Icons.warning_amber_rounded,
                color: context.colorScheme().error,
              ),
            ),
            Expanded(
              child: Text(
                'Deleting your account will:',
                style: context.textTheme().titleMedium,
              ),
            ),
          ],
        ),
        buildPoint('Delete your account info and profile photo'),
        buildPoint('Delete your call history and your online data'),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 35),
              height: 22,
              width: 15,
              child: const Text('•'),
            ),
            Expanded(
              child: Text.rich(
                TextSpan(
                  text: 'For detailed information, please read it ',
                  children: [
                    TextSpan(
                      text: 'here',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.read<OpenExternalLinkBloc>().add(
                              const OpenExternalLinkEvent.openSupportStarted());
                        },
                    )
                  ],
                ),
                style: context.textTheme().bodyMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDeleteMyAccountButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final UiService uiService = sl();
        final data = DialogData(
          title: 'Delete Account Confirmation',
          description:
              "Are you sure you want to delete your account? This action is irreversible and will delete all your data associated with the account. Please note that once the account is deleted, you won't be able to recover it.",
          actions: [
            DialogActionData(
              title: 'Delete Account',
              isNegative: true,
              onPressed: () {
                context
                    .read<AccountBloc>()
                    .add(const AccountEvent.deleteAccountStarted());
              },
            ),
            DialogActionData(
              title: context.localization.cancel,
              onPressed: () {
                final NavigatorService navigatorService = sl();
                navigatorService.pop();
              },
            ),
          ],
        );
        uiService.showDialog(data);
      },
      child: Text(
        'Delete My Account',
        style: context.textTheme().labelLarge?.copyWith(
              color: context.colorScheme().error,
            ),
      ),
    );
  }
}
