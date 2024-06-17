import 'package:http/http.dart' as http;

import '../../models/exception/exception.dart';

abstract class ExternalLinkRemoteDataSource {
  Future<String> getPrivacyPolicy();

  Future<String> getTnC();

  Future<String> getSupport();
}

class ExternalLinkRemoteDataSourceImpl implements ExternalLinkRemoteDataSource {
  const ExternalLinkRemoteDataSourceImpl();

  @override
  Future<String> getPrivacyPolicy() async {
    // TODO: Create env for this link
    const url =
        'https://raw.githubusercontent.com/baharudin-yusup/salingsapa/main/docs/PRIVACY_POLICY.md';
    try {
      return (await http.get(Uri.parse(url))).body;
    } catch (error) {
      throw const ServerException();
    }
  }

  @override
  Future<String> getTnC() async {
    // TODO: Create env for this link
    const url =
        'https://raw.githubusercontent.com/baharudin-yusup/salingsapa/main/docs/TERMS_AND_CONDITIONS.md';
    try {
      return (await http.get(Uri.parse(url))).body;
    } catch (error) {
      throw const ServerException();
    }
  }

  @override
  Future<String> getSupport() async {
    // TODO: Create env for this link
    const url =
        'https://raw.githubusercontent.com/baharudin-yusup/salingsapa/main/docs/SUPPORT.md';
    try {
      return (await http.get(Uri.parse(url))).body;
    } catch (error) {
      throw const ServerException();
    }
  }
}
