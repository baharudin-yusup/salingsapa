part of 'open_external_link_bloc.dart';

@freezed
class OpenExternalLinkEvent with _$OpenExternalLinkEvent {
  const factory OpenExternalLinkEvent.openPrivacyPolicyStarted() =
      _OpenPrivacyPolicyStarted;

  const factory OpenExternalLinkEvent.openTnCStarted() = _OpenTnCStarted;

  const factory OpenExternalLinkEvent.openSupportStarted() =
      _OpenSupportStarted;
}
