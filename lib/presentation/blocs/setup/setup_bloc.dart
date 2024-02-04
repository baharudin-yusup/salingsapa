import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../core/utils/logger.dart';
import '../../../data/constants/exception_code.dart';
import '../../../data/extensions/extensions.dart';
import '../../../domain/entities/user.dart';
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

  SetupBloc(
    this._verifyPhoneNumber,
    this._verifyOtp,
    this._resendOtp,
  ) : super(const SetupState.inputPhoneNumberInitial()) {
    // Handle phone number events
    on<_InputPhoneNumberStarted>(_onStartInputPhoneNumber);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_SubmitPhoneNumberStarted>(_startSubmitPhoneNumber);

    // Handle OTP events
    on<_InputOtpStarted>(_onStartInputOtp);
    on<_OtpChanged>(_inputOtp);
    on<_ResendOtpStarted>(_onStartResendOtp);
    on<_SubmitOtpStarted>(_onStartSubmitOtp);
  }

  void _onStartInputPhoneNumber(
      _InputPhoneNumberStarted event, Emitter<SetupState> emit) {
    emit(SetupState.inputPhoneNumberInitial(state.phoneNumber));
  }

  void _onPhoneNumberChanged(
      _PhoneNumberChanged event, Emitter<SetupState> emit) {
    emit(SetupState.inputPhoneNumberInitial(event.phoneNumber));
  }

  void _startSubmitPhoneNumber(
      _SubmitPhoneNumberStarted event, Emitter<SetupState> emit) async {
    emit(SetupState.inputPhoneNumberVerifyInProgress(state.phoneNumber));
    final verifyPhoneNumberResult =
        await _verifyPhoneNumber(state.phoneNumber.toFormattedPhoneNumber());
    verifyPhoneNumberResult.fold(
      (failure) {
        if (failure.code == AppFailureCode.autoSignInFailed) {
          emit(SetupState.inputPhoneNumberSuccess(state.phoneNumber));
          add(const SetupEvent.inputOtpStarted());
        } else {
          emit(SetupState.inputPhoneNumberFailure(state.phoneNumber, failure));
        }
      },
      (user) => emit(SetupState.autoSignInSuccess(state.phoneNumber, user)),
    );
  }

  void _onStartInputOtp(_InputOtpStarted event, Emitter<SetupState> emit) {
    state.maybeWhen(
      inputPhoneNumberFailure: (phoneNumber, failure) {
        if (failure.code != AppFailureCode.autoSignInFailed) {
          return;
        }
        emit(SetupState.inputOtpInitial(phoneNumber));
      },
      inputPhoneNumberSuccess: (phoneNumber) {
        emit(SetupState.inputOtpInitial(phoneNumber));
      },
      orElse: () {},
    );
  }

  void _inputOtp(_OtpChanged event, Emitter<SetupState> emit) async {
    Logger.print('change OTP input started...');
    Logger.print('current state = ${state.runtimeType}');
    final newOtp = event.otp;
    state.maybeWhen(
      resendOtpFailure: (phoneNumber, _, failure) {
        emit(SetupState.inputOtpInitial(phoneNumber, newOtp));
      },
      inputOtpInitial: (phoneNumber, _) {
        emit(SetupState.inputOtpInitial(phoneNumber, newOtp));
        if (newOtp.length == 6) {
          Logger.print('submitting OTP code started...');
          add(const SetupEvent.submitOtpStarted());
        }
      },
      inputOtpValidationFailure: (phoneNumber, otp, failure) {
        emit(SetupState.inputOtpInitial(phoneNumber, newOtp));
      },
      orElse: () {},
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
          inputPhoneNumberFailure: (phoneNumber, _) {
            emit(SetupState.resendOtpFailure(phoneNumber, '', failure));
          },
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
          orElse: () {},
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
