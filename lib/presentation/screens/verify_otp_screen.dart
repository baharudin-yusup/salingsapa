import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../data/extensions/extensions.dart';
import '../../injection_container.dart';
import '../blocs/setup/setup_bloc.dart';
import '../components/intuitive_otp.dart';
import '../components/intuitive_scaffold.dart';
import '../services/theme_service.dart';
import '../services/ui_service.dart';
import '../utils/app_localizations.dart';
import '../utils/dimension.dart';
import '../utils/failure_translation.dart';

class VerifyOtpScreen extends StatelessWidget {
  static const routeName = '/verify-otp';

  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SetupBloc, SetupState>(
      listener: (context, state) {
        final UiService uiService = sl();
        state.maybeMap(
          inputOtpValidationInProgress: (_) {
            uiService.showLoading();
          },
          inputOtpValidationSuccess: (_) {
            // Handled by root screen
          },
          inputOtpValidationFailure: (_) {
            uiService.hideLoading();
          },
          resendOtpInProgress: (_) {
            uiService.showLoading();
          },
          resendOtpSuccess: (state) {
            // TODO: Add success message
            uiService.hideLoading();
          },
          resendOtpFailure: (state) {
            uiService.hideLoading();
            Fluttertoast.showToast(msg: state.failure.errorMessage);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return PopScope(
          onPopInvoked: (didPop) {
            if (didPop) {
              context
                  .read<SetupBloc>()
                  .add(const SetupEvent.inputPhoneNumberStarted());
            }
          },
          child: IntuitiveScaffold(
            appBar: IntuitiveAppBar(
              middle: Text(AppLocalizations.of(context)!.verifyYourPhoneNumber),
              cupertinoTrailing: GestureDetector(
                onTap: state.isAbleToSubmitOtp
                    ? () {
                        context
                            .read<SetupBloc>()
                            .add(const SetupEvent.submitOtpStarted());
                      }
                    : null,
                child: Text(
                  AppLocalizations.of(context)!.send,
                  style: TextStyle(
                    color: state.isAbleToSubmitOtp
                        ? context.colorScheme().primary
                        : context.colorScheme().onBackground.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            builder: (context) {
              return ListView(
                padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace)
                    .add(context.padding),
                children: [
                  _buildInfoText(),
                  const SizedBox(height: IntuitiveUiConstant.normalSpace),
                  IntuitiveOtp(
                    onChanged: (otp) {
                      context.read<SetupBloc>().add(SetupEvent.otpChanged(otp));
                    },
                    onCompleted: (otp) {
                      context.read<SetupBloc>().add(SetupEvent.otpChanged(otp));
                    },
                    obscure: false,
                    errorMessage: state.maybeMap(
                      inputOtpValidationFailure: (state) =>
                          state.failure.code.translate(context),
                      orElse: () => null,
                    ),
                    errorColor: context.colorScheme().error,
                  ),
                  if (Platform.isAndroid) ...[
                    const SizedBox(height: IntuitiveUiConstant.smallSpace),
                    _buildSendButton(),
                  ],
                  const SizedBox(height: IntuitiveUiConstant.normalSpace),
                  _buildResendCodeText(context),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildSendButton() {
    return BlocBuilder<SetupBloc, SetupState>(
      builder: (context, state) {
        return Center(
          child: ElevatedButton.icon(
            onPressed: state.isAbleToSubmitOtp
                ? () {
                    context
                        .read<SetupBloc>()
                        .add(const SetupEvent.submitOtpStarted());
                  }
                : null,
            icon: Icon(Icons.adaptive.arrow_forward_rounded),
            label: Text(AppLocalizations.of(context)!.send),
          ),
        );
      },
    );
  }

  Widget _buildInfoText() {
    return BlocBuilder<SetupBloc, SetupState>(
      builder: (context, state) {
        return Text(AppLocalizations.of(context)!
            .otpSendToInfo(state.phoneNumber.toFormattedPhoneNumber()));
      },
    );
  }

  Widget _buildResendCodeText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.didNotReceiveCodeInfo,
          style: context.textTheme().bodyMedium,
        ),
        const SizedBox(
          width: IntuitiveUiConstant.normalSpace,
        ),
        GestureDetector(
          onTap: () {
            context.read<SetupBloc>().add(const SetupEvent.resendOtpStarted());
          },
          child: Text(
            AppLocalizations.of(context)!.resendCode,
            style: context.textTheme().bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
