import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../domain/usecases/external_link/get_privacy_and_policy.dart';
import '../../../domain/usecases/external_link/get_terms_and_condition_content.dart';

part 'open_external_link_event.dart';

part 'open_external_link_state.dart';

part 'open_external_link_bloc.freezed.dart';

class OpenExternalLinkBloc
    extends Bloc<OpenExternalLinkEvent, OpenExternalLinkState> {
  final GetPrivacyPolicyContent _getPrivacyPolicyContent;
  final GetTermsAndConditionContent _getTermsAndConditionsContent;

  OpenExternalLinkBloc(
      this._getPrivacyPolicyContent, this._getTermsAndConditionsContent)
      : super(const OpenExternalLinkState.initial()) {
    on<_OpenPrivacyPolicyStarted>(_onOpenPrivacyPolicy);
    on<_OpenTnCStarted>(_onTermsAndConditions);
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
}
