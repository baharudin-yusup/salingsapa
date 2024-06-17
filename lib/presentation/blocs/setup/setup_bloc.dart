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
  ) : super(const SetupState.inputPhoneNumberInitial()) {
    // Handle phone number events
    on<_InputPhoneNumberStarted>(_onStartInputPhoneNumber);
    on<_DialCodeChanged>(_startCheckDialCode);
    on<_CountryPickerSelected>(_startPickCountry);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_SubmitPhoneNumberStarted>(_startSubmitPhoneNumber);

    // Handle OTP events
    on<_InputOtpStarted>(_onStartInputOtp);
    on<_OtpChanged>(_inputOtp);
    on<_ResendOtpStarted>(_onStartResendOtp);
    on<_SubmitOtpStarted>(_onStartSubmitOtp);

    // Handle clear data
    on<_ClearSetupStarted>(_onStartClearData);

    /// Initial setup
    _getDeviceLocale().fold(
      (_) {},
      (deviceLocale) {
        final countryCode = CountryCode.fromCode(deviceLocale.countryCode);
        if (countryCode != null) {
          Logger.print('[INIT] Change country picker to ${countryCode.name}');
          add(SetupEvent.countryPickerSelected(countryCode));
        }
      },
    );
  }

  void _onStartClearData(_ClearSetupStarted event, Emitter<SetupState> emit) {
    Logger.print('clear all setup data success!');
    emit(const SetupState.inputPhoneNumberInitial());
  }

  void _onStartInputPhoneNumber(
      _InputPhoneNumberStarted event, Emitter<SetupState> emit) {
    Logger.print('input phone number started...');
    state.maybeWhen(
      inputPhoneNumberVerifyInProgress: (phoneNumber, countryCode) {
        emit(SetupState.inputPhoneNumberInitial('', countryCode));
      },
      inputPhoneNumberSuccess: (phoneNumber) {
        emit(
          SetupState.inputPhoneNumberInitial(
            '',
            phoneNumber.dialCode != null
                ? CountryCode.fromDialCode(
                    phoneNumber.dialCode!,
                  )
                : null,
          ),
        );
      },
      inputPhoneNumberFailure: (_, countryCode, __) {
        emit(SetupState.inputPhoneNumberInitial('', countryCode));
      },
      pickCountrySuccess: (_, countryCode) {
        emit(SetupState.inputPhoneNumberInitial('', countryCode));
      },
      inputOtpInitial: (phoneNumber, _) {
        emit(
          SetupState.inputPhoneNumberInitial(
            '',
            phoneNumber.dialCode != null
                ? CountryCode.fromDialCode(
                    phoneNumber.dialCode!,
                  )
                : null,
          ),
        );
      },
      inputOtpValidationFailure: (phoneNumber, otp, failure) {
        emit(
          SetupState.inputPhoneNumberInitial(
            '',
            phoneNumber.dialCode != null
                ? CountryCode.fromDialCode(
                    phoneNumber.dialCode!,
                  )
                : null,
          ),
        );
      },
      inputOtpValidationInProgress: (phoneNumber, otp) {
        emit(
          SetupState.inputPhoneNumberInitial(
            '',
            phoneNumber.dialCode != null
                ? CountryCode.fromDialCode(
                    phoneNumber.dialCode!,
                  )
                : null,
          ),
        );
      },
      inputOtpValidationSuccess: (phoneNumber, otp) {
        emit(
          SetupState.inputPhoneNumberInitial(
            '',
            phoneNumber.dialCode != null
                ? CountryCode.fromDialCode(
                    phoneNumber.dialCode!,
                  )
                : null,
          ),
        );
      },
      resendOtpInProgress: (phoneNumber, otp) {
        emit(
          SetupState.inputPhoneNumberInitial(
            '',
            phoneNumber.dialCode != null
                ? CountryCode.fromDialCode(
                    phoneNumber.dialCode!,
                  )
                : null,
          ),
        );
      },
      resendOtpFailure: (phoneNumber, otp, failure) {
        emit(
          SetupState.inputPhoneNumberInitial(
            '',
            phoneNumber.dialCode != null
                ? CountryCode.fromDialCode(
                    phoneNumber.dialCode!,
                  )
                : null,
          ),
        );
      },
      resendOtpSuccess: (phoneNumber, otp) {
        emit(
          SetupState.inputPhoneNumberInitial(
            '',
            phoneNumber.dialCode != null
                ? CountryCode.fromDialCode(
                    phoneNumber.dialCode!,
                  )
                : null,
          ),
        );
      },
      orElse: () {
        emit(const SetupState.inputPhoneNumberInitial(''));
      },
    );
  }

  void _startPickCountry(
      _CountryPickerSelected event, Emitter<SetupState> emit) {
    state.maybeWhen(
      inputPhoneNumberInitial: (phoneNumber, _) {
        emit(SetupState.pickCountrySuccess(phoneNumber, event.countryCode));
        emit(
            SetupState.inputPhoneNumberInitial(phoneNumber, event.countryCode));
      },
      pickCountrySuccess: (phoneNumber, _) {
        emit(SetupState.pickCountrySuccess(phoneNumber, event.countryCode));
        emit(
            SetupState.inputPhoneNumberInitial(phoneNumber, event.countryCode));
      },
      orElse: () {},
    );
  }

  void _startCheckDialCode(_DialCodeChanged event, Emitter<SetupState> emit) {
    final countryCode = CountryCode.fromDialCode('+${event.dialCode}');
    state.maybeWhen(
      pickCountrySuccess: (phoneNumber, _) {
        emit(SetupState.inputPhoneNumberInitial(phoneNumber, countryCode));
      },
      inputPhoneNumberInitial: (phoneNumber, _) {
        emit(SetupState.inputPhoneNumberInitial(phoneNumber, countryCode));
      },
      orElse: () {},
    );
  }

  void _onPhoneNumberChanged(
      _PhoneNumberChanged event, Emitter<SetupState> emit) {
    state.maybeWhen(
      inputPhoneNumberInitial: (_, countryCode) {
        emit(
            SetupState.inputPhoneNumberInitial(event.phoneNumber, countryCode));
      },
      inputPhoneNumberFailure: (_, countryCode, __) {
        emit(
            SetupState.inputPhoneNumberInitial(event.phoneNumber, countryCode));
      },
      orElse: () {},
    );
  }

  void _startSubmitPhoneNumber(
      _SubmitPhoneNumberStarted event, Emitter<SetupState> emit) async {
    Logger.print('Submitting phone number started...');
    String? rawMobileNumber;
    String? rawDialCode;
    String? rawCountryCode;
    final isPreConditionValid = state.maybeWhen(
      inputPhoneNumberInitial: (phoneNumber, countryCode) {
        if (countryCode == null) {
          return false;
        }

        rawCountryCode = countryCode.code;
        rawDialCode = countryCode.dialCode;
        rawMobileNumber = phoneNumber;

        emit(SetupState.inputPhoneNumberVerifyInProgress(
            phoneNumber, countryCode));
        return true;
      },
      pickCountrySuccess: (phoneNumber, countryCode) {
        rawCountryCode = countryCode.code;
        rawDialCode = countryCode.dialCode;
        rawMobileNumber = phoneNumber;

        emit(SetupState.inputPhoneNumberVerifyInProgress(
            phoneNumber, countryCode));
        return true;
      },
      inputPhoneNumberFailure: (phoneNumber, countryCode, _) {
        rawCountryCode = countryCode.code;
        rawDialCode = countryCode.dialCode;
        rawMobileNumber = phoneNumber;

        emit(SetupState.inputPhoneNumberVerifyInProgress(
            phoneNumber, countryCode));
        return true;
      },
      orElse: () {
        return false;
      },
    );

    if (!isPreConditionValid ||
        rawCountryCode == null ||
        rawDialCode == null ||
        rawMobileNumber == null) {
      Logger.error('pre condition not valid', event: 'submitting phone number');
      return;
    }
    Logger.print('Pre-condition checking passed!');
    Logger.print('Raw mobile number: +$rawDialCode$rawMobileNumber');
    Logger.print('Raw country code: $rawCountryCode');

    final createPhoneNumberResult = await _formatPhoneNumber(
      RawPhoneNumber(
        phoneNumber: '+$rawDialCode$rawMobileNumber',
        countryCode: rawCountryCode!,
      ),
    );
    PhoneNumber? unvalidatedPhoneNumber;
    final isCreatePhoneNumberSuccess = createPhoneNumberResult.fold(
      (failure) {
        Logger.error(failure.errorMessage,
            event: 'creating unvalidated phone number');
        return state.maybeWhen(
          inputPhoneNumberVerifyInProgress: (phoneNumber, countryCode) {
            emit(
              SetupState.inputPhoneNumberFailure(
                phoneNumber,
                countryCode,
                failure,
              ),
            );
            return false;
          },
          orElse: () {
            return false;
          },
        );
      },
      (phoneNumber) {
        unvalidatedPhoneNumber = phoneNumber;
        return true;
      },
    );

    if (!isCreatePhoneNumberSuccess || unvalidatedPhoneNumber == null) {
      Logger.error('null data', event: 'creating unvalidated phone number');
      state.maybeWhen(
        inputPhoneNumberVerifyInProgress: (phoneNumber, countryCode) {
          emit(SetupState.inputPhoneNumberFailure(
              phoneNumber, countryCode, const UnknownFailure()));
        },
        orElse: () {},
      );
      return;
    }

    Logger.print(
        'Creating unvalidated phone number model succeed!, raw phone number: ${unvalidatedPhoneNumber?.raw}');
    final isPhoneNumberValid =
        (await _isPhoneNumberValid(unvalidatedPhoneNumber!)).fold(
      (failure) {
        Logger.error(failure.errorMessage,
            event: 'validating phone number format');
        return state.maybeWhen(
          inputPhoneNumberVerifyInProgress: (phoneNumber, countryCode) {
            emit(
              SetupState.inputPhoneNumberFailure(
                phoneNumber,
                countryCode,
                failure,
              ),
            );
            return false;
          },
          orElse: () {
            return false;
          },
        );
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
        await _verifyPhoneNumber(validatedPhoneNumber!.raw);
    verifyPhoneNumberResult.fold(
      (failure) {
        if (failure.code == AppFailureCode.autoSignInFailed) {
          emit(SetupState.inputPhoneNumberSuccess(validatedPhoneNumber));
          add(const SetupEvent.inputOtpStarted());
        } else {
          state.maybeWhen(
            inputPhoneNumberVerifyInProgress: (phoneNumber, countryCode) {
              emit(
                SetupState.inputPhoneNumberFailure(
                  phoneNumber,
                  countryCode,
                  failure,
                ),
              );
            },
            orElse: () {},
          );
        }
      },
      (user) => emit(SetupState.autoSignInSuccess(validatedPhoneNumber, user)),
    );
  }

  void _onStartInputOtp(_InputOtpStarted event, Emitter<SetupState> emit) {
    Logger.print('input otp started...');
    state.maybeWhen(
      inputPhoneNumberSuccess: (phoneNumber) {
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
      inputOtpValidationFailure: (phoneNumber, otp, failure) {
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
      inputPhoneNumberSuccess: (phoneNumber) {
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
