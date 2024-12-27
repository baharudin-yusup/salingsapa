import 'package:bloc/bloc.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/logger.dart';
import '../../../data/constants/exception_code.dart';
import '../../../domain/entities/phone_number.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/errors/failure.dart';
import '../../../domain/usecases/format_phone_number.dart';
import '../../../domain/usecases/get_device_locale.dart';
import '../../../domain/usecases/is_phone_number_valid.dart';
import '../../../domain/usecases/resend_otp.dart';
import '../../../domain/usecases/verify_otp.dart';
import '../../../domain/usecases/verify_phone_number.dart';

part 'setup_bloc.freezed.dart';

part 'setup_event.dart';

part 'setup_state.dart';

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  final VerifyPhoneNumber _verifyPhoneNumber;
  final VerifyOtp _verifyOtp;
  final ResendOtp _resendOtp;
  final IsPhoneNumberValid _isPhoneNumberValid;
  final FormatPhoneNumber _formatPhoneNumber;
  final GetDeviceLocale _getDeviceLocale;

  SetupBloc(
    this._verifyPhoneNumber,
    this._verifyOtp,
    this._resendOtp,
    this._isPhoneNumberValid,
    this._formatPhoneNumber,
    this._getDeviceLocale,
  ) : super(const SetupState.changePhoneNumberSuccess()) {
    // Handle phone number events
    on<_InputPhoneNumberStarted>(_onStartInputPhoneNumber);
    on<_DialCodeChanged>(_startCheckDialCode);
    on<_CountryPickerSelected>(_startPickCountry);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_ValidatePhoneNumberFormatStarted>(_validatePhoneNumberFormat);
    on<_SubmitPhoneNumberStarted>(_startSubmitPhoneNumber);

    // Handle OTP events
    on<_InputOtpStarted>(_onStartInputOtp);
    on<_OtpChanged>(_inputOtp);
    on<_ResendOtpStarted>(_onStartResendOtp);
    on<_SubmitOtpStarted>(_onStartSubmitOtp);

    /// Initial setup
    add(const SetupEvent.inputPhoneNumberStarted());
  }

  void _validatePhoneNumberFormat(
      _ValidatePhoneNumberFormatStarted event, Emitter<SetupState> emit) {
    final dialCode = event.dialCode ?? '';
    final phoneNumber = event.phoneNumber ?? '';
    final countryCode = CountryCode.fromDialCode('+$dialCode');

    if (countryCode == null) {
      emit(SetupState.validatePhoneNumberFormatFailure());
      return;
    }

    // TODO: Move this into remote repo
    final minPhoneNumberLength = 5;
    if (phoneNumber.length < minPhoneNumberLength) {
      emit(SetupState.validatePhoneNumberFormatFailure());
      return;
    }

    emit(SetupState.validatePhoneNumberFormatSuccess());
  }

  void _onStartInputPhoneNumber(
      _InputPhoneNumberStarted event, Emitter<SetupState> emit) {
    Logger.print('input phone number started...');

    final deviceLocale = _getDeviceLocale().fold(
      (_) => null,
      (deviceLocale) => deviceLocale,
    );
    final defaultCountryCode = deviceLocale != null
        ? CountryCode.fromCode(deviceLocale.countryCode)
        : null;
    emit(SetupState.changePhoneNumberSuccess(''));

    if (defaultCountryCode != null) {
      emit(SetupState.pickCountrySuccess(defaultCountryCode));
    }
  }

  void _startPickCountry(
      _CountryPickerSelected event, Emitter<SetupState> emit) {
    // TODO: Add some analytics here
    emit(SetupState.pickCountrySuccess(event.countryCode));
  }

  void _startCheckDialCode(_DialCodeChanged event, Emitter<SetupState> emit) {
    final countryCode = CountryCode.fromDialCode('+${event.dialCode}');
    emit(SetupState.changeDialCodeSuccess(event.dialCode, countryCode));
  }

  void _onPhoneNumberChanged(
      _PhoneNumberChanged event, Emitter<SetupState> emit) {
    emit(SetupState.changePhoneNumberSuccess(event.phoneNumber));
  }

  void _startSubmitPhoneNumber(
      _SubmitPhoneNumberStarted event, Emitter<SetupState> emit) async {
    Logger.print('Submitting phone number started...');
    final rawMobileNumber = event.phoneNumber ?? '';
    final rawDialCode = event.dialCode ?? '';
    final countryCode =
        CountryCode.fromDialCode('+${event.dialCode}')?.code ?? '';

    emit(SetupState.verifyPhoneNumberInProgress());

    if (rawDialCode.isEmpty || rawMobileNumber.isEmpty || countryCode.isEmpty) {
      Logger.error(
          'pre condition not valid: rawDialCode $rawDialCode rawMobileNumber: $rawMobileNumber countryCode: $countryCode',
          event: 'submitting phone number');
      // TODO: Use localization
      emit(SetupState.verifyPhoneNumberFailure(
          FeatureFailure(errorMessage: 'Your phone number is not valid')));
      return;
    }

    Logger.print('Pre-condition checking passed!');
    Logger.print('Raw mobile number: +$rawDialCode$rawMobileNumber');
    Logger.print('Raw country code: $countryCode');

    final createPhoneNumberResult = await _formatPhoneNumber(
      RawPhoneNumber(
        phoneNumber: '+$rawDialCode$rawMobileNumber',
        countryCode: countryCode,
      ),
    );
    final unvalidatedPhoneNumber = createPhoneNumberResult.fold(
      (failure) {
        Logger.error(failure.errorMessage,
            event: 'creating unvalidated phone number');
        emit(SetupState.verifyPhoneNumberFailure(failure));

        return null;
      },
      (phoneNumber) {
        return phoneNumber;
      },
    );

    if (unvalidatedPhoneNumber == null) {
      Logger.error('null data', event: 'creating unvalidated phone number');
      return;
    }

    Logger.print(
        'Creating unvalidated phone number model succeed!, raw phone number: ${unvalidatedPhoneNumber.raw}');
    final isPhoneNumberValid =
        (await _isPhoneNumberValid(unvalidatedPhoneNumber)).fold(
      (failure) {
        Logger.error(failure.errorMessage,
            event: 'validating phone number format');
        emit(SetupState.verifyPhoneNumberFailure(failure));
        return false;
      },
      (isValid) {
        return isValid;
      },
    );

    if (!isPhoneNumberValid) {
      Logger.error('phone number format is invalid!',
          event: 'submitting phone number');
      return;
    }

    final validatedPhoneNumber = unvalidatedPhoneNumber;

    final verifyPhoneNumberResult =
        await _verifyPhoneNumber(validatedPhoneNumber.raw);
    verifyPhoneNumberResult.fold(
      (failure) {
        if (failure.code == AppFailureCode.autoSignInFailed) {
          emit(SetupState.inputPhoneNumberVerifySuccess(validatedPhoneNumber));
          add(const SetupEvent.inputOtpStarted());
        } else {
          emit(SetupState.verifyPhoneNumberFailure(failure));
        }
      },
      (user) => emit(SetupState.autoSignInSuccess(validatedPhoneNumber, user)),
    );
  }

  void _onStartInputOtp(_InputOtpStarted event, Emitter<SetupState> emit) {
    Logger.print('input otp started...');
    state.maybeWhen(
      inputPhoneNumberVerifySuccess: (phoneNumber) {
        final newState = SetupState.inputOtpInitial(phoneNumber);
        Logger.print('change state to ${newState.toString()}');
        emit(newState);
      },
      orElse: () {
        Logger.print('unknown valid state: ${state.toString()}');
      },
    );
  }

  void _inputOtp(_OtpChanged event, Emitter<SetupState> emit) async {
    Logger.print('change OTP input started...');
    final newOtp = event.otp;
    state.maybeWhen(
      resendOtpFailure: (phoneNumber, _, failure) {
        emit(SetupState.inputOtpInitial(phoneNumber, newOtp));
      },
      inputOtpInitial: (phoneNumber, _) {
        final newState = SetupState.inputOtpInitial(phoneNumber, newOtp);
        Logger.print('Change state to ${newState.toString()}');
        emit(newState);
        if (newOtp.length == 6) {
          Logger.print('submitting OTP code started...');
          add(const SetupEvent.submitOtpStarted());
        }
      },
      inputOtpValidationFailure: (phoneNumber, _, __) {
        final newState = SetupState.inputOtpInitial(phoneNumber, newOtp);
        Logger.print('Change state to ${newState.toString()}');
        emit(newState);
        if (newOtp.length == 6) {
          Logger.print('submitting OTP code started...');
          add(const SetupEvent.submitOtpStarted());
        }
      },
      orElse: () {
        Logger.print('Unknown valid state = ${state.toString()}');
      },
    );
  }

  void _onStartResendOtp(
      _ResendOtpStarted event, Emitter<SetupState> emit) async {
    Logger.print('(BLOC) Resend otp started...');
    // TODO: Add loading state
    state.maybeWhen(
      inputPhoneNumberVerifySuccess: (phoneNumber) {
        emit(SetupState.resendOtpInProgress(phoneNumber, ''));
      },
      inputOtpInitial: (phoneNumber, otp) {
        emit(SetupState.resendOtpInProgress(phoneNumber, otp));
      },
      inputOtpValidationInProgress: (phoneNumber, otp) {
        emit(SetupState.resendOtpInProgress(phoneNumber, otp));
      },
      inputOtpValidationSuccess: (phoneNumber, otp) {
        emit(SetupState.resendOtpInProgress(phoneNumber, otp));
      },
      inputOtpValidationFailure: (phoneNumber, otp, failure) {
        emit(SetupState.resendOtpInProgress(phoneNumber, otp));
      },
      resendOtpFailure: (phoneNumber, otp, _) {
        emit(SetupState.resendOtpInProgress(phoneNumber, otp));
      },
      orElse: () {},
    );

    final result = await _resendOtp();
    result.fold(
      (failure) {
        Logger.error(failure, event: 'resending OTP');
        state.maybeWhen(
          inputOtpInitial: (phoneNumber, otp) {
            emit(SetupState.resendOtpFailure(phoneNumber, otp, failure));
          },
          inputOtpValidationInProgress: (phoneNumber, otp) {
            emit(SetupState.resendOtpFailure(phoneNumber, otp, failure));
          },
          inputOtpValidationFailure: (phoneNumber, otp, _) {
            emit(SetupState.resendOtpFailure(phoneNumber, otp, failure));
          },
          resendOtpInProgress: (phoneNumber, otp) {
            emit(SetupState.resendOtpFailure(phoneNumber, otp, failure));
          },
          resendOtpFailure: (phoneNumber, otp, _) {
            emit(SetupState.resendOtpFailure(phoneNumber, otp, failure));
          },
          orElse: () {
            // Unknown case
            Logger.error('Unhandled failure state: ${state.runtimeType}',
                event: 'resending OTP');
          },
        );
      },
      (_) => state.maybeWhen(
        inputOtpInitial: (phoneNumber, otp) {
          emit(SetupState.resendOtpSuccess(phoneNumber, otp));
        },
        inputOtpValidationInProgress: (phoneNumber, otp) {
          emit(SetupState.resendOtpSuccess(phoneNumber, otp));
        },
        inputOtpValidationFailure: (phoneNumber, otp, _) {
          emit(SetupState.resendOtpSuccess(phoneNumber, otp));
        },
        resendOtpInProgress: (phoneNumber, otp) {
          emit(SetupState.resendOtpSuccess(phoneNumber, otp));
        },
        orElse: () {},
      ),
    );
  }

  void _onStartSubmitOtp(
      _SubmitOtpStarted event, Emitter<SetupState> emit) async {
    Logger.print('submit otp code started...');
    final validOtp = state.maybeWhen(
      inputOtpInitial: (phoneNumber, otp) {
        if (otp.length != 6) {
          emit(SetupState.inputOtpValidationFailure(
              phoneNumber,
              otp,
              const FeatureFailure(
                  errorMessage: 'Please input valid OTP code')));
          return null;
        }
        emit(SetupState.inputOtpValidationInProgress(phoneNumber, otp));
        return otp;
      },
      orElse: () => null,
    );

    if (validOtp == null) {
      Logger.print('otp code is invalid!');
      return;
    }

    Logger.print('verifying otp started...');
    Logger.print('valid otp code = $validOtp');
    final result = await _verifyOtp(validOtp);
    result.fold(
      (failure) {
        state.maybeWhen(
          inputOtpValidationInProgress: (phoneNumber, otp) {
            emit(SetupState.inputOtpValidationFailure(
                phoneNumber, otp, failure));
          },
          orElse: () {},
        );
      },
      (_) {
        state.maybeWhen(
          inputOtpValidationInProgress: (phoneNumber, otp) {
            emit(SetupState.inputOtpValidationSuccess(phoneNumber, otp));
          },
          orElse: () {},
        );
      },
    );
  }
}
