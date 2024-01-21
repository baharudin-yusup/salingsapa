import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../core/utils/logger.dart';
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
    on<_InputPhoneNumberStarted>(_onStartInputPhoneNumber);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_ButtonDonePressed>(_onButtonDonePressed);

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

  void _onButtonDonePressed(
      _ButtonDonePressed event, Emitter<SetupState> emit) async {
    emit(SetupState.inputPhoneNumberVerifyInProgress(state.phoneNumber));
    await _verifyPhoneNumber('+62${state.phoneNumber}');
    emit(SetupState.inputPhoneNumberSuccess('+62${state.phoneNumber}'));
  }

  void _onStartInputOtp(_InputOtpStarted event, Emitter<SetupState> emit) {
    state.maybeWhen(
      inputPhoneNumberSuccess: (phoneNumber) {
        emit(SetupState.inputOtpInitial(phoneNumber));
      },
      orElse: () {},
    );
  }

  void _inputOtp(_OtpChanged event, Emitter<SetupState> emit) async {
    final newOtp = event.otp;
    state.maybeWhen(
      inputOtpInitial: (phoneNumber, _) {
        emit(SetupState.inputOtpInitial(phoneNumber, newOtp));
        if (newOtp.length == 6) {
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
      return;
    }

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
