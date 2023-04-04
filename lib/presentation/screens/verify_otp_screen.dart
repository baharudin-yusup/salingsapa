import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection_container.dart';
import '../blocs/setup/setup_bloc.dart';
import '../components/intuitive_otp.dart';
import '../components/intuitive_scaffold.dart';
import '../services/navigator_service.dart';
import '../services/theme_service.dart';
import '../services/ui_service.dart';
import '../utils/app_localizations.dart';
import 'skeleton_screen.dart';

class VerifyOtpScreen extends StatelessWidget {
  static const routeName = '/verify-otp';

  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SetupBloc bloc = context.read();
    return BlocConsumer<SetupBloc, SetupState>(
      listener: (context, state) {
        final NavigatorService service = sl();
        final UiService uiService = sl();
        state.map(
            inputPhoneNumberInitial: (_) {},
            inputPhoneNumberVerifyInProgress: (value) {},
            inputPhoneNumberFailure: (_) {},
            inputPhoneNumberSuccess: (_) {},
            inputOtpInitial: (_) {},
            inputOtpValidationInProgress: (_) {
              uiService.showLoading();
            },
            inputOtpValidationSuccess: (_) {
              uiService.hideLoading();
              service.pushNamedAndRemoveUntil(
                  RootScreen.routeName, (route) => false);
            },
            inputOtpValidationFailure: (_) {
              uiService.hideLoading();
            });
      },
      builder: (context, state) {
        return IntuitiveScaffold(
          appBar: IntuitiveAppBar(
            middle: Text(AppLocalizations.of(context)!.verifyYourPhoneNumber),
          ),
          child: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
              children: [
                _buildInfoText(),
                const SizedBox(height: IntuitiveUiConstant.normalSpace),
                IntuitiveOtp(
                  onCompleted: (otp) {
                    bloc.add(SetupEvent.otpChanged(otp));
                  },
                  obscure: false,
                ),
                const SizedBox(height: IntuitiveUiConstant.normalSpace),
                _buildResendCodeText(context),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildInfoText() {
    return BlocBuilder<SetupBloc, SetupState>(
      builder: (context, state) {
        return Text(AppLocalizations.of(context)!
            .otpSendToInfo('+62${state.phoneNumber}'));
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
          onTap: () {},
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
