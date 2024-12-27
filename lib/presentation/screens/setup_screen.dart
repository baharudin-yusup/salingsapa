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
  final _phoneNumberController = TextEditingController();

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
              pickCountrySuccess: (countryCode) => countryCode,
              orElse: () => null,
            );
        if (initialValue == null) return;
        _updateCountryAndDialCode(
            dialCode: initialValue.dialCode, countryName: initialValue.name);
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

  void _validatePhoneNumberFormat(BuildContext context) {
    context.read<SetupBloc>().add(SetupEvent.validatePhoneNumberFormatStarted(
        dialCode: _dialCodeController.text,
        phoneNumber: _phoneNumberController.text));
  }

  void _updateCountryAndDialCode({
    String? dialCode,
    String? countryName,
  }) {
    if (dialCode != null) {
      _dialCodeController.text = dialCode.replaceAll('+', '');
    }
    if (countryName != null) {
      _countryPickerController.text = countryName;
    }
  }

  void _onCountryPickerClosed(BuildContext context, selectedCountry) {
    if (selectedCountry != null) {
      Logger.print('Change country picker to ${selectedCountry.name}');
      context
          .read<SetupBloc>()
          .add(SetupEvent.countryPickerSelected(selectedCountry));
      _validatePhoneNumberFormat(context);
      _focusScope?.requestFocus(_phoneNumberFocusNode);
    } else {
      _focusScope?.unfocus();
    }
  }

  void _onDialCodeChanged(BuildContext context, String dialCode) {
    context.read<SetupBloc>().add(SetupEvent.dialCodeChanged(dialCode));
    _validatePhoneNumberFormat(context);
  }

  void _onPhoneNumberChanged(BuildContext context, String phoneNumber) {
    context.read<SetupBloc>().add(SetupEvent.phoneNumberChanged(phoneNumber));
    _validatePhoneNumberFormat(context);
  }

  void _onButtonDonePressed() {
    FocusManager.instance.primaryFocus?.unfocus();
    context.read<SetupBloc>().add(SetupEvent.submitPhoneNumberStarted(
        dialCode: _dialCodeController.text,
        phoneNumber: _phoneNumberController.text));
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
              changePhoneNumberSuccess: (state) {
                _phoneNumberController.text = state.phoneNumber;
              },
              verifyPhoneNumberInProgress: (_) {
                uiService.showLoading();
              },
              verifyPhoneNumberFailure: (state) {
                uiService.hideLoading();
                final errorCode = state.failure.code;

                Fluttertoast.showToast(
                  msg: errorCode != AppFailureCode.unknown
                      ? state.failure.code.translate(context)
                      : state.failure.errorMessage,
                );
              },
              inputPhoneNumberVerifySuccess: (_) {
                uiService.hideLoading();
                context
                    .read<SetupBloc>()
                    .add(const SetupEvent.inputOtpStarted());
                navigatorService.pushNamed(VerifyOtpScreen.routeName);
              },
              pickCountrySuccess: (state) {
                _updateCountryAndDialCode(
                  dialCode: state.countryCode.dialCode,
                  countryName: state.countryCode.name,
                );
              },
              changeDialCodeSuccess: (state) {
                _updateCountryAndDialCode(
                  dialCode: state.dialCode,
                  countryName: state.countryCode?.name ?? '',
                );
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: BlocBuilder<SetupBloc, SetupState>(
        buildWhen: (previous, current) {
          final previousStatus = previous.maybeWhen(
              validatePhoneNumberFormatFailure: (_) => false,
              validatePhoneNumberFormatSuccess: () => true,
              orElse: () => null);
          final currentStatus = current.maybeWhen(
              validatePhoneNumberFormatFailure: (_) => false,
              validatePhoneNumberFormatSuccess: () => true,
              orElse: () => null);

          if (currentStatus == null) return false;

          return previousStatus != currentStatus;
        },
        builder: (context, state) {
          final isAbleToVerifyPhoneNumber = state.maybeWhen(
              validatePhoneNumberFormatSuccess: () => true,
              orElse: () => false);
          return IntuitiveScaffold(
            resizeToAvoidBottomInset: false,
            appBar: IntuitiveAppBar(
              middle: Text(AppLocalizations.of(context)!.enterYourPhoneNumber),
              cupertinoTrailing: GestureDetector(
                onTap: isAbleToVerifyPhoneNumber ? _onButtonDonePressed : null,
                child: Text(
                  AppLocalizations.of(context)!.done,
                  style: TextStyle(
                    color: isAbleToVerifyPhoneNumber
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
      buildWhen: (_, current) {
        final currentCountryName = current.maybeWhen(
          pickCountrySuccess: (countryCode) => countryCode.name,
          orElse: () => null,
        );

        if (currentCountryName == null) {
          return false;
        }

        final previousCountryName = _countryPickerController.text;
        return previousCountryName != currentCountryName;
      },
      builder: (context, state) {
        return IntuitiveTextField(
          autofocus: false,
          readOnly: true,
          controller: _countryPickerController,
          padding: const EdgeInsets.all(
            IntuitiveUiConstant.smallSpace,
          ),
          onTap: () => _showCountryPicker(context),
        );
      },
    );
  }

  void _showCountryPicker(BuildContext context) {
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
    countryPickerWithParams
        .showPicker(
      context: context,
      backgroundColor: context.colorScheme().surface,
    )
        .then(
      (country) {
        if (mounted) {
          _onCountryPickerClosed(context, country);
        }
      },
    );
  }

  Widget _buildDialCodeInput() {
    return BlocBuilder<SetupBloc, SetupState>(
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
            onChanged: (dialCode) => _onDialCodeChanged(context, dialCode),
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
        controller: _phoneNumberController,
        onChanged: (phoneNumber) => _onPhoneNumberChanged(context, phoneNumber),
        onSubmitted: (_) {
          // TODO: Check this in iOS device
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }

  Widget _buildNextButton() {
    return BlocBuilder<SetupBloc, SetupState>(
      buildWhen: (previous, current) {
        final previousStatus = previous.maybeWhen(
            validatePhoneNumberFormatFailure: (_) => false,
            validatePhoneNumberFormatSuccess: () => true,
            orElse: () => null);
        final currentStatus = current.maybeWhen(
            validatePhoneNumberFormatFailure: (_) => false,
            validatePhoneNumberFormatSuccess: () => true,
            orElse: () => null);

        if (currentStatus == null) return false;

        return previousStatus != currentStatus;
      },
      builder: (context, state) {
        final isAbleToVerifyPhoneNumber = state.maybeWhen(
            validatePhoneNumberFormatSuccess: () => true, orElse: () => false);
        return Center(
          child: ElevatedButton.icon(
            onPressed: isAbleToVerifyPhoneNumber ? _onButtonDonePressed : null,
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
