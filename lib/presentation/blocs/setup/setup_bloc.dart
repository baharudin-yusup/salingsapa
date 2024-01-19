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
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_ButtonDonePressed>(_onButtonDonePressed);
    on<_ResendOtpStarted>(_onStartResendOtp);
    on<_OtpChanged>(_inputOtp);
  }

  void _onPhoneNumberChanged(
      _PhoneNumberChanged event, Emitter<SetupState> emit) {
    final canSubmit = event.phoneNumber.length > 6;
    emit(SetupState.inputPhoneNumberInitial(event.phoneNumber, canSubmit));
  }

  void _onButtonDonePressed(
      _ButtonDonePressed event, Emitter<SetupState> emit) async {
    emit(SetupState.inputPhoneNumberVerifyInProgress(state.phoneNumber));
    await _verifyPhoneNumber('+62${state.phoneNumber}');
    emit(SetupState.inputPhoneNumberSuccess('+62${state.phoneNumber}'));
  }

  void _inputOtp(_OtpChanged event, Emitter<SetupState> emit) async {
    final otp = event.otp;

    Logger.print('User OTP input: $otp');
    if (state is _InputOtpValidationInProgress) {
      return;
    }
    if (otp.length < 6) {
      emit(SetupState.inputOtpInitial(state.phoneNumber, otp));
    } else {
      emit(SetupState.inputOtpValidationInProgress(state.phoneNumber, otp));
      final result = await _verifyOtp(otp);
      result.fold(
          (failure) => emit(SetupState.inputOtpValidationFailure(
              state.phoneNumber, otp, failure)),
          (user) => emit(
              SetupState.inputOtpValidationSuccess(state.phoneNumber, otp)));
    }
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
        Logger.error(failure, event: 'resending OTP' );
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

  bool canSubmit() {
    return state.maybeMap(
      inputPhoneNumberInitial: (value) => value.canSubmit,
      inputPhoneNumberVerifyInProgress: (_) => false,
      inputPhoneNumberFailure: (_) => false,
      inputPhoneNumberSuccess: (_) => false,
      inputOtpInitial: (_) => false,
      inputOtpValidationInProgress: (_) => false,
      inputOtpValidationSuccess: (_) => false,
      inputOtpValidationFailure: (_) => false,
      orElse: () => false,
    );
  }
}
