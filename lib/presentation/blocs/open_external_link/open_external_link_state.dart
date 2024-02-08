part of 'open_external_link_bloc.dart';

@freezed
class OpenExternalLinkState with _$OpenExternalLinkState {
  const factory OpenExternalLinkState.initial() = _Initial;

  const factory OpenExternalLinkState.openExternalLinkInProgress() =
      _OpenExternalLinkInProgress;

  const factory OpenExternalLinkState.openExternalLinkFailure(Failure failure) =
      _OpenExternalLinkFailure;

  const factory OpenExternalLinkState.openPrivacyPolicySuccess(String content) =
      _OpenPrivacyPolicySuccess;

  const factory OpenExternalLinkState.openTnCSuccess(String content) =
      _OpenTnCSuccess;

  const factory OpenExternalLinkState.openSupportSuccess(String content) =
      _OpenSupportSuccess;
}
