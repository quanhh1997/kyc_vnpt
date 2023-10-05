// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KycResult _$KycResultFromJson(Map<String, dynamic> json) => KycResult(
      identityCard:
          IdentityCard.fromJson(json['INFO_RESULT'] as Map<String, dynamic>),
      imageFront: json['FRONT_IMAGE'] as String,
      imageBack: json['REAR_IMAGE'] as String,
      imageFace: json['FACE_IMAGE'] as String,
    );

Map<String, dynamic> _$KycResultToJson(KycResult instance) => <String, dynamic>{
      'INFO_RESULT': instance.identityCard,
      'FRONT_IMAGE': instance.imageFront,
      'REAR_IMAGE': instance.imageBack,
      'FACE_IMAGE': instance.imageFace,
    };
