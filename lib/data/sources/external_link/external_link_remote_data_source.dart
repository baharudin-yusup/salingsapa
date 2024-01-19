import '../../../core/errors/exceptions.dart';
import '../../plugins/network_plugin.dart';

abstract class ExternalLinkRemoteDataSource {
  Future<String> getPrivacyPolicy();

  Future<String> getTnC();
}

class ExternalLinkRemoteDataSourceImpl implements ExternalLinkRemoteDataSource {
  final NetworkPlugin _networkPlugin;

  const ExternalLinkRemoteDataSourceImpl(this._networkPlugin);

  @override
  Future<String> getPrivacyPolicy() async {
    // TODO: Create env for this link
    const url =
        'https://raw.githubusercontent.com/baharudin-yusup/salingsapa/main/docs/user/PRIVACY_POLICY.md';
    try {
      return (await _networkPlugin.get(path: url)).data;
    } catch (error) {
      throw ServerException();
    }
  }

  @override
  Future<String> getTnC() async {
    // TODO: Create env for this link
    const url =
        'https://raw.githubusercontent.com/baharudin-yusup/salingsapa/main/docs/user/TERMS_AND_CONDITIONS.md';
    try {
      return (await _networkPlugin.get(path: url)).data;
    } catch (error) {
      throw ServerException();
    }
  }
}
