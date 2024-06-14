import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failure.dart';
import '../../../domain/usecases/get_privacy_and_policy.dart';
import '../../../domain/usecases/get_support_content.dart';
import '../../../domain/usecases/get_terms_and_condition_content.dart';

part 'open_external_link_bloc.freezed.dart';

part 'open_external_link_event.dart';

part 'open_external_link_state.dart';

class OpenExternalLinkBloc
    extends Bloc<OpenExternalLinkEvent, OpenExternalLinkState> {
  final GetPrivacyPolicyContent _getPrivacyPolicyContent;
  final GetTermsAndConditionContent _getTermsAndConditionsContent;
  final GetSupportContent _getSupportContent;

  OpenExternalLinkBloc(
    this._getPrivacyPolicyContent,
    this._getTermsAndConditionsContent,
    this._getSupportContent,
  ) : super(const OpenExternalLinkState.initial()) {
    on<_OpenPrivacyPolicyStarted>(_onOpenPrivacyPolicy);
    on<_OpenTnCStarted>(_onTermsAndConditions);
    on<_OpenSupportStarted>(_onStartOpenSupportLink);
  }

  void _onOpenPrivacyPolicy(_OpenPrivacyPolicyStarted event,
      Emitter<OpenExternalLinkState> emit) async {
    if (state is _OpenExternalLinkInProgress) {
      return;
    }
    emit(const OpenExternalLinkState.openExternalLinkInProgress());

    final result = await _getPrivacyPolicyContent();
    result.fold(
      (failure) => emit(OpenExternalLinkState.openExternalLinkFailure(failure)),
      (content) =>
          emit(OpenExternalLinkState.openPrivacyPolicySuccess(content)),
    );
  }

  void _onTermsAndConditions(
      _OpenTnCStarted event, Emitter<OpenExternalLinkState> emit) async {
    if (state is _OpenExternalLinkInProgress) {
      return;
    }
    emit(const OpenExternalLinkState.openExternalLinkInProgress());

    final result = await _getTermsAndConditionsContent();
    result.fold(
      (failure) => emit(OpenExternalLinkState.openExternalLinkFailure(failure)),
      (content) => emit(OpenExternalLinkState.openTnCSuccess(content)),
    );
  }

  void _onStartOpenSupportLink(
      _OpenSupportStarted event, Emitter<OpenExternalLinkState> emit) async {
    if (state is _OpenExternalLinkInProgress) {
      return;
    }
    emit(const OpenExternalLinkState.openExternalLinkInProgress());

    final result = await _getSupportContent();
    result.fold(
      (failure) => emit(OpenExternalLinkState.openExternalLinkFailure(failure)),
      (content) => emit(OpenExternalLinkState.openSupportSuccess(content)),
    );
  }
}
