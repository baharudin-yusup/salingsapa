import 'dart:io';
import 'dart:math';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/injection_container.dart';
import '../../core/utils/logger.dart';
import '../../data/constants/exception_code.dart';
import '../blocs/open_external_link/open_external_link_bloc.dart';
import '../blocs/setup/setup_bloc.dart';
import '../components/intuitive_scaffold.dart';
import '../components/intuitive_textfield.dart';
import '../services/navigator_service.dart';
import '../services/theme_service.dart';
import '../services/ui_service.dart';
import '../utils/context_shortcut.dart';
import '../utils/failure_translation.dart';
import 'markdown_screen.dart';
import 'verify_otp_screen.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  /// Input controllers
  final _countryPickerController = TextEditingController();
  final _dialCodeController = TextEditingController();

  /// Inout focus nodes
  FocusScopeNode? _focusScope;
  final _phoneNumberFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        _focusScope = FocusScope.of(context);
        final initialValue = context.read<SetupBloc>().state.maybeWhen(
          pickCountrySuccess: (_, countryCode) {
            return countryCode.dialCode;
          },
          inputPhoneNumberInitial: (_, countryCode) {
            if (countryCode == null) {
              return '';
            }

            return countryCode.dialCode;
          },
          orElse: () {
            return '';
          },
        ).replaceAll('+', '');
        _dialCodeController.text = initialValue;
      },
    );
  }

  @override
  void dispose() {
    _countryPickerController.dispose();
    _dialCodeController.dispose();
    _phoneNumberFocusNode.dispose();
    _focusScope?.dispose();
    super.dispose();
  }

  void _onCountryPickerClosed(selectedCountry) {
    if (selectedCountry != null) {
      Logger.print('Change country picker to ${selectedCountry.name}');
      context
          .read<SetupBloc>()
          .add(SetupEvent.countryPickerSelected(selectedCountry));
      _focusScope?.requestFocus(_phoneNumberFocusNode);
    } else {
      _focusScope?.unfocus();
    }
  }

  void _onDialCodeChanged(dialCode) {
    context.read<SetupBloc>().add(SetupEvent.dialCodeChanged(dialCode));
  }

  void _onPhoneNumberChanged(phoneNumber) {
    context.read<SetupBloc>().add(SetupEvent.phoneNumberChanged(phoneNumber));
  }

  void _onButtonDonePressed() {
    FocusManager.instance.primaryFocus?.unfocus();
    context.read<SetupBloc>().add(const SetupEvent.submitPhoneNumberStarted());
  }

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
              inputPhoneNumberVerifyInProgress: (_) {
                uiService.showLoading();
              },
              inputPhoneNumberFailure: (state) {
                uiService.hideLoading();
                final errorCode = state.failure.code;

                Fluttertoast.showToast(
                  msg: errorCode != AppFailureCode.unknown
                      ? state.failure.code.translate(context)
                      : state.failure.errorMessage,
                );
              },
              inputPhoneNumberSuccess: (_) {
                uiService.hideLoading();
                context
                    .read<SetupBloc>()
                    .add(const SetupEvent.inputOtpStarted());
                navigatorService.pushNamed(VerifyOtpScreen.routeName);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: BlocBuilder<SetupBloc, SetupState>(
        builder: (context, state) {
          return IntuitiveScaffold(
            resizeToAvoidBottomInset: false,
            appBar: IntuitiveAppBar(
              middle: Text(AppLocalizations.of(context)!.enterYourPhoneNumber),
              cupertinoTrailing: GestureDetector(
                onTap: state.isAbleToSubmitPhoneNumber
                    ? _onButtonDonePressed
                    : null,
                child: Text(
                  AppLocalizations.of(context)!.done,
                  style: TextStyle(
                    color: state.isAbleToSubmitPhoneNumber
                        ? context.colorScheme().primary
                        : context.colorScheme().onSurface.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            builder: (context) {
              return SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
                  child: Column(
                    children: [
                      _buildInfoText(),
                      const SizedBox(height: IntuitiveUiConstant.normalSpace),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return SizedBox(
                            width: min(constraints.maxWidth, 500),
                            child: Column(
                              children: [
                                _buildCountryPicker(),
                                const SizedBox(
                                  height: IntuitiveUiConstant.smallSpace,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildDialCodeInput(),
                                    const SizedBox(
                                      width: IntuitiveUiConstant.smallSpace,
                                    ),
                                    _buildPhoneNumberInput(),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: IntuitiveUiConstant.largeSpace),
                      if (Platform.isAndroid) _buildNextButton(),
                      const Spacer(),
                      _buildPrivacyPolicyText(),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildInfoText() {
    return Text(AppLocalizations.of(context)!.setupScreenInfo);
  }

  Widget _buildCountryPicker() {
    return BlocBuilder<SetupBloc, SetupState>(
      buildWhen: (previous, current) {
        final previousCountryCode = previous.maybeWhen(
          inputPhoneNumberInitial: (_, countryCode) {
            return countryCode;
          },
          pickCountrySuccess: (_, countryCode) {
            return countryCode;
          },
          orElse: () {
            return null;
          },
        );

        final currentCountryCode = current.maybeWhen(
          inputPhoneNumberInitial: (_, countryCode) {
            return countryCode;
          },
          pickCountrySuccess: (_, countryCode) {
            return countryCode;
          },
          orElse: () {
            return null;
          },
        );

        if (previousCountryCode?.name != currentCountryCode?.name) {
          return true;
        }

        return false;
      },
      builder: (context, state) {
        final selectedCountry = state.maybeWhen(
          inputPhoneNumberInitial: (phoneNumber, countryCode) {
            if (countryCode != null) {
              return countryCode.name;
            }
            return 'Invalid Country';
          },
          pickCountrySuccess: (phoneNumber, countryCode) {
            return countryCode.name;
          },
          inputPhoneNumberVerifyInProgress: (phoneNumber, countryCode) {
            return countryCode.name;
          },
          inputPhoneNumberFailure: (phoneNumber, countryCode, failure) {
            return countryCode.name;
          },
          orElse: () {
            return 'Invalid Country';
          },
        );
        _countryPickerController.text = selectedCountry;
        return IntuitiveTextField(
          autofocus: false,
          readOnly: true,
          controller: _countryPickerController,
          padding: const EdgeInsets.all(
            IntuitiveUiConstant.smallSpace,
          ),
          onTap: _showCountryPicker,
        );
      },
    );
  }

  void _showCountryPicker() {
    final countryPickerWithParams = FlCountryCodePicker(
      localize: true,
      showDialCode: true,
      showSearchBar: true,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(
          IntuitiveUiConstant.normalSpace,
          IntuitiveUiConstant.largeSpace,
          IntuitiveUiConstant.normalSpace,
          IntuitiveUiConstant.tinySpace,
        ),
        child: Text(
          'Your Country',
          style: context.textTheme().headlineSmall,
        ),
      ),
      countryTextStyle: context.textTheme().bodyMedium,
      dialCodeTextStyle: context.textTheme().bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme().onSurface.withOpacity(0.7),
          ),
      searchBarDecoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: const Icon(Icons.search_rounded),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(IntuitiveUiConstant.normalRadius),
          gapPadding: IntuitiveUiConstant.normalSpace,
        ),
      ),
      horizontalTitleGap: IntuitiveUiConstant.smallSpace,
      searchBarTextStyle: context.textTheme().bodyMedium,
    );
    // Show the country code picker when tapped.
    countryPickerWithParams.showPicker(context: context).then(
          _onCountryPickerClosed,
        );
  }

  Widget _buildDialCodeInput() {
    return BlocConsumer<SetupBloc, SetupState>(
      listenWhen: (previous, current) {
        return current.maybeMap(
          pickCountrySuccess: (_) => true,
          orElse: () {
            return false;
          },
        );
      },
      listener: (context, state) {
        final initialValue = state.maybeWhen(
          pickCountrySuccess: (_, countryCode) {
            return countryCode.dialCode;
          },
          inputPhoneNumberInitial: (_, countryCode) {
            if (countryCode == null) {
              return '';
            }

            return countryCode.dialCode;
          },
          orElse: () {
            return '';
          },
        ).replaceAll('+', '');

        _dialCodeController.text = initialValue;
      },
      buildWhen: (previous, current) {
        return current.maybeMap(
          pickCountrySuccess: (_) => true,
          orElse: () {
            return false;
          },
        );
      },
      builder: (context, state) {
        return SizedBox(
          width: 80,
          child: IntuitiveTextField(
            controller: _dialCodeController,
            textInputType: TextInputType.number,
            prefix: const Padding(
              padding:
                  EdgeInsets.only(right: IntuitiveUiConstant.veryTinySpace),
              child: Text('+'),
            ),
            maxLength: 4,
            counterText: '',
            alwaysShowPrefix: true,
            padding: const EdgeInsets.all(
              IntuitiveUiConstant.smallSpace,
            ),
            textInputAction: TextInputAction.next,
            onChanged: _onDialCodeChanged,
          ),
        );
      },
    );
  }

  Widget _buildPhoneNumberInput() {
    return Expanded(
      child: IntuitiveTextField(
        autofocus: true,
        focusNode: _phoneNumberFocusNode,
        hint: context.localization.phoneNumber,
        textInputType: TextInputType.number,
        textInputAction: TextInputAction.done,
        maxLength: 20,
        counterText: '',
        alwaysShowPrefix: true,
        padding: const EdgeInsets.all(
          IntuitiveUiConstant.smallSpace,
        ),
        onChanged: _onPhoneNumberChanged,
        onSubmitted: (_) {
          // TODO: Check this in iOS device
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }

  Widget _buildNextButton() {
    return BlocBuilder<SetupBloc, SetupState>(
      buildWhen: (previous, current) =>
          previous.isAbleToSubmitPhoneNumber !=
          current.isAbleToSubmitPhoneNumber,
      builder: (context, state) {
        return Center(
          child: ElevatedButton.icon(
            onPressed:
                state.isAbleToSubmitPhoneNumber ? _onButtonDonePressed : null,
            icon: Icon(Icons.adaptive.arrow_forward_rounded),
            label: Text(AppLocalizations.of(context)!.next),
          ),
        );
      },
    );
  }

  Widget _buildPrivacyPolicyText() {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: IntuitiveUiConstant.normalSpace,
      ),
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
  }
}
