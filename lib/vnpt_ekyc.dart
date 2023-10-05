import 'entities/kyc_result.dart';
import 'vnpt_ekyc_platform_interface.dart';

class VnptEkyc {
  Future<KycResult?> getEkycVNPT() {
    return VnptEkycPlatform.instance.getEkycVNPT();
  }
}
