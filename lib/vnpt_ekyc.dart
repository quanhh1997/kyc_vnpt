import 'entities/kyc_result.dart';
import 'vnpt_ekyc_platform_interface.dart';

class VnptEkyc {
  String? _tokenId;
  String? _tokenKey;
  String? _accessToken;
  Future<KycResult?> getEkycVNPT() async {
    return await VnptEkycPlatform.instance.getEkycVNPT(
        tokenId: _tokenId, tokenKey: _tokenKey, accessToken: _accessToken);
  }

  Future<void> setToken({
    required String tokenId,
    required String tokenKey,
    required String accessToken,
  }) async {
    _tokenId = tokenId;
    _tokenKey = tokenKey;
    _accessToken = accessToken;
  }
}
