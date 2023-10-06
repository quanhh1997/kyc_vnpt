import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'entities/identity_card.dart';
import 'entities/kyc_result.dart';
import 'vnpt_ekyc_platform_interface.dart';

/// An implementation of [VnptEkycPlatform] that uses method channels.
class MethodChannelVnptEkyc extends VnptEkycPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('vnpt_ekyc');

  @override
  Future<KycResult?> getEkycVNPT(
      {String? accessToken, String? tokenId, String? tokenKey}) async {
    final Map<dynamic, dynamic>? data =
        await methodChannel.invokeMethod<Map<dynamic, dynamic>>('getEkycVNPT', {
      'tokenId': tokenId,
      'tokenKey': tokenKey,
      'accessToken': accessToken,
    });
    final KycResult kycResult = KycResult(
        identityCard: IdentityCard.fromJson(jsonDecode(data?['INFO_RESULT'])),
        imageBack: data?['REAR_IMAGE'],
        imageFace: data?['FACE_IMAGE'],
        imageFront: data?['FRONT_IMAGE']);
    return kycResult;
  }
}
