import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../injection_container.dart';
import '../blocs/open_external_link/open_external_link_bloc.dart';
import '../blocs/setup/setup_bloc.dart';
import '../components/intuitive_scaffold.dart';
import '../components/intuitive_textfield.dart';
import '../services/navigator_service.dart';
import '../services/theme_service.dart';
import '../services/ui_service.dart';
import '../utils/app_localizations.dart';
import '../utils/dimension.dart';
import 'common/markdown_screen.dart';
import 'verify_otp_screen.dart';

class SetupScreen extends StatelessWidget {
  static const routeName = '/setup';

  const SetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<OpenExternalLinkBloc, OpenExternalLinkState>(
          listener: (context, state) {
            state.maybeWhen(
              openExternalLinkInProgress: () {
                final UiService uiService = sl();
                uiService.showLoading();
              },
              openPrivacyPolicySuccess: (content) {
                final UiService uiService = sl();
                final NavigatorService navigatorService = sl();

                uiService.hideLoading();
                navigatorService.push((context) => MarkdownScreen(content));
              },
              openTnCSuccess: (content) {
                final UiService uiService = sl();
                final NavigatorService navigatorService = sl();

                uiService.hideLoading();
                navigatorService.push((context) => MarkdownScreen(content));
              },
              openExternalLinkFailure: (failure) {
                Fluttertoast.showToast(msg: failure.errorMessage);
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<SetupBloc, SetupState>(
          listener: (context, state) {
            final UiService uiService = sl();
            final NavigatorService navigatorService = sl();
            state.maybeMap(
              inputPhoneNumberVerifyInProgress: (value) {
                uiService.showLoading();
              },
              inputPhoneNumberFailure: (_) {
                uiService.hideLoading();
              },
              inputPhoneNumberSuccess: (_) {
                uiService.hideLoading();
                navigatorService.pushNamed(VerifyOtpScreen.routeName);
                context
                    .read<SetupBloc>()
                    .add(const SetupEvent.inputOtpStarted());
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: BlocBuilder<SetupBloc, SetupState>(
        builder: (context, state) {
          return IntuitiveScaffold(
            appBar: IntuitiveAppBar(
              middle: Text(AppLocalizations.of(context)!.enterYourPhoneNumber),
              cupertinoTrailing: GestureDetector(
                onTap: state.isAbleToSubmitPhoneNumber
                    ? () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        _onButtonDonePressed(context);
                      }
                    : null,
                child: Text(
                  AppLocalizations.of(context)!.done,
                  style: TextStyle(
                    color: state.isAbleToSubmitPhoneNumber
                        ? context.colorScheme().primary
                        : context.colorScheme().onBackground.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            builder: (context) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  ListView(
                    padding:
                        const EdgeInsets.all(IntuitiveUiConstant.normalSpace)
                            .add(MediaQuery.of(context).padding),
                    children: [
                      _buildInfoText(),
                      const SizedBox(height: IntuitiveUiConstant.normalSpace),
                      IntuitiveTextField(
                        hint: context.localization.phoneNumber,
                        textInputType: TextInputType.number,
                        prefix: const Padding(
                          padding: EdgeInsets.only(
                              right: IntuitiveUiConstant.tinySpace),
                          child: Text('+62'),
                        ),
                        padding: const EdgeInsets.all(
                            IntuitiveUiConstant.smallSpace),
                        textInputAction: TextInputAction.done,
                        onChanged: (phoneNumber) => context
                            .read<SetupBloc>()
                            .add(SetupEvent.phoneNumberChanged(phoneNumber)),
                      ),
                      const SizedBox(height: IntuitiveUiConstant.largeSpace),
                      if (Platform.isAndroid) _buildMaterialDoneButton(),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: _buildPrivacyPolicyText(),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildInfoText() {
    return Builder(
        builder: (context) =>
            Text(AppLocalizations.of(context)!.setupScreenInfo));
  }

  Widget _buildMaterialDoneButton() {
    return BlocBuilder<SetupBloc, SetupState>(
      builder: (context, state) {
        return Center(
          child: ElevatedButton.icon(
            onPressed: state.isAbleToSubmitPhoneNumber
                ? () => _onButtonDonePressed(context)
                : null,
            icon: Icon(Icons.adaptive.arrow_forward_rounded),
            label: Text(AppLocalizations.of(context)!.next),
          ),
        );
      },
    );
  }

  void _onButtonDonePressed(BuildContext context) {
    context.read<SetupBloc>().add(const SetupEvent.submitPhoneNumberStarted());
  }

  Widget _buildPrivacyPolicyText() {
    return Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace).add(
            const EdgeInsets.only(bottom: IntuitiveUiConstant.normalSpace)),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: context.textTheme().bodySmall,
            children: [
              const TextSpan(text: 'I hereby agree to the applicable '),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  color: context.colorScheme().primary,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.read<OpenExternalLinkBloc>().add(
                        const OpenExternalLinkEvent.openPrivacyPolicyStarted());
                  },
              ),
              const TextSpan(text: ' and '),
              TextSpan(
                text: 'Terms and Conditions',
                style: TextStyle(
                  color: context.colorScheme().primary,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context
                        .read<OpenExternalLinkBloc>()
                        .add(const OpenExternalLinkEvent.openTnCStarted());
                  },
              ),
            ],
          ),
        ),
      );
    });
  }
}
