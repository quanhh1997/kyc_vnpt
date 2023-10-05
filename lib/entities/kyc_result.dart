// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'identity_card.dart';

part 'kyc_result.g.dart';

@JsonSerializable()
class KycResult {
  @JsonKey(name: "INFO_RESULT")
  final IdentityCard identityCard;

  @JsonKey(name: "FRONT_IMAGE")
  final String imageFront;

  @JsonKey(name: "REAR_IMAGE")
  final String imageBack;

  @JsonKey(name: "FACE_IMAGE")
  final String imageFace;
  KycResult({
    required this.identityCard,
    required this.imageFront,
    required this.imageBack,
    required this.imageFace,
  });
  factory KycResult.fromJson(Map<String, dynamic> json) =>
      _$KycResultFromJson(json);

  Map<String, dynamic> toJson() => _$KycResultToJson(this);
}
