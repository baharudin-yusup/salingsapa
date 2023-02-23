import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salingsapa/core/errors/failures.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/usecases/verify_otp.dart';
import '../../../domain/usecases/verify_phone_number.dart';

part 'setup_bloc.freezed.dart';
part 'setup_event.dart';
part 'setup_state.dart';

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  final VerifyPhoneNumber _verifyPhoneNumber;
  final VerifyOtp _verifyOtp;

  SetupBloc(
    this._verifyPhoneNumber,
    this._verifyOtp,
  ) : super(const SetupState.inputPhoneNumberInitial()) {
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_ButtonDonePressed>(_onButtonDonePressed);
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
    emit(SetupState.inputPhoneNumberSuccess(state.phoneNumber));
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

  bool canSubmit() {
    return state.map(
      inputPhoneNumberInitial: (value) => value.canSubmit,
      inputPhoneNumberVerifyInProgress: (_) => false,
      inputPhoneNumberFailure: (_) => false,
      inputPhoneNumberSuccess: (_) => false,
      inputOtpInitial: (_) => false,
      inputOtpValidationInProgress: (_) => false,
      inputOtpValidationSuccess: (_) => false,
      inputOtpValidationFailure: (_) => false,
    );
  }
}
