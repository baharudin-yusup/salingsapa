import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection_container.dart';
import '../blocs/setup/setup_bloc.dart';
import '../components/intuitive_scaffold.dart';
import '../components/intuitive_textfield.dart';
import '../services/navigator_service.dart';
import '../services/theme_service.dart';
import '../services/ui_service.dart';
import '../utils/app_localizations.dart';
import 'verify_otp_screen.dart';

class SetupScreen extends StatelessWidget {
  static const routeName = '/setup';

  const SetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SetupBloc>(
      create: (_) => sl(),
      child: BlocConsumer<SetupBloc, SetupState>(
        listener: (context, state) {
          final UiService uiService = sl();
          final NavigatorService service = sl();
          state.map(
              inputPhoneNumberInitial: (_) {},
              inputPhoneNumberVerifyInProgress: (value) {
                uiService.showLoading();
              },
              inputPhoneNumberFailure: (_) {
                uiService.hideLoading();
              },
              inputPhoneNumberSuccess: (_) {
                uiService.hideLoading();
                service.pushNamed(VerifyOtpScreen.routeName);
              },
              inputOtpInitial: (_) {},
              inputOtpValidationInProgress: (_) {},
              inputOtpValidationSuccess: (_) {},
              inputOtpValidationFailure: (_) {});
        },
        builder: (context, state) {
          final SetupBloc bloc = context.read();
          return IntuitiveScaffold(
            appBar: IntuitiveAppBar(
              middle: Text(AppLocalizations.of(context)!.enterYourPhoneNumber),
              cupertinoTrailing: GestureDetector(
                onTap: bloc.canSubmit()
                    ? () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        _onButtonDonePressed(bloc);
                      }
                    : null,
                child: Text(
                  AppLocalizations.of(context)!.done,
                  style: TextStyle(
                    color: bloc.canSubmit()
                        ? context.colorScheme().primary
                        : context.colorScheme().background.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            child: SafeArea(
              child: ListView(
                padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
                children: [
                  _buildInfoText(),
                  const SizedBox(height: IntuitiveUiConstant.normalSpace),
                  IntuitiveTextField(
                    hint: 'Phone number',
                    textInputType: TextInputType.number,
                    prefix: const Padding(
                      padding:
                          EdgeInsets.only(right: IntuitiveUiConstant.tinySpace),
                      child: Text('+62'),
                    ),
                    padding:
                        const EdgeInsets.all(IntuitiveUiConstant.smallSpace),
                    textInputAction: TextInputAction.done,
                    onChanged: (phoneNumber) =>
                        bloc.add(SetupEvent.phoneNumberChanged(phoneNumber)),
                  ),
                  const SizedBox(height: IntuitiveUiConstant.largeSpace),
                  if (Platform.isAndroid) _buildMaterialDoneButton(),
                ],
              ),
            ),
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
        final SetupBloc bloc = context.read();
        final canSubmit = bloc.canSubmit();
        return Center(
          child: ElevatedButton.icon(
            onPressed: canSubmit ? () => _onButtonDonePressed(bloc) : null,
            icon: Icon(Icons.adaptive.arrow_forward_rounded),
            label: Text(AppLocalizations.of(context)!.next),
          ),
        );
      },
    );
  }

  void _onButtonDonePressed(SetupBloc bloc) {
    bloc.add(const SetupEvent.buttonDonePressed());
  }
}
