import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/presentation/components/intuitive_otp.dart';
import 'package:salingsapa/presentation/screens/skeleton_screen.dart';

import '../../injection_container.dart';
import '../blocs/setup/setup_bloc.dart';
import '../components/intuitive_scaffold.dart';
import '../services/navigator_service.dart';
import '../services/theme_service.dart';
import '../services/ui_service.dart';

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
            middle: Text('Verify Your Phone Number'),
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
        return Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'We have sent you an SMS with a code to ',
              ),
              TextSpan(
                text: '+62${state.phoneNumber}. ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    'To complete your phone number verification, please enter the 6-digit activation code.',
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildResendCodeText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Didn't receive a verification code?",
          style: context.textTheme().bodyMedium,
        ),
        const SizedBox(
          width: IntuitiveUiConstant.normalSpace,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Resend code',
            style: context.textTheme().bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
