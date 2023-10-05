// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdentityCard _$IdentityCardFromJson(Map<String, dynamic> json) => IdentityCard(
      imgs: json['imgs'] == null
          ? null
          : Imgs.fromJson(json['imgs'] as Map<String, dynamic>),
      dataSign: json['dataSign'] as String?,
      dataBase64: json['dataBase64'] as String?,
      logID: json['logID'] as String?,
      message: json['message'] as String?,
      serverVersion: json['server_version'] as String?,
      object: json['object'] == null
          ? null
          : Object.fromJson(json['object'] as Map<String, dynamic>),
      statusCode: json['statusCode'],
      challengeCode: json['challengeCode'] as String?,
    );

Map<String, dynamic> _$IdentityCardToJson(IdentityCard instance) =>
    <String, dynamic>{
      'imgs': instance.imgs,
      'dataSign': instance.dataSign,
      'dataBase64': instance.dataBase64,
      'logID': instance.logID,
      'message': instance.message,
      'server_version': instance.serverVersion,
      'object': instance.object,
      'statusCode': instance.statusCode,
      'challengeCode': instance.challengeCode,
    };

Imgs _$ImgsFromJson(Map<String, dynamic> json) => Imgs(
      imgBack: json['img_back'] as String?,
      imgFront: json['img_front'] as String?,
    );

Map<String, dynamic> _$ImgsToJson(Imgs instance) => <String, dynamic>{
      'img_back': instance.imgBack,
      'img_front': instance.imgFront,
    };

Object _$ObjectFromJson(Map<String, dynamic> json) => Object(
      originLocation: json['origin_location'] as String?,
      msg: json['msg'] as String?,
      nameProb: (json['name_prob'] as num?)?.toDouble(),
      coverProbFront: json['cover_frob_front'] as int?,
      backTypeId: json['back_type_id'] as int?,
      addressFakeWarning: json['address_fake_warning'] as bool?,
      checkingResultBack: json['checking_result_back'] == null
          ? null
          : CheckingResult.fromJson(
              json['checking_result_back'] as Map<String, dynamic>),
      nationPolicy: json['nation_policy'] as String?,
      generalWarning: json['general_warning'] as List<dynamic>?,
      features: json['features'] as String?,
      dupplicationWarning: json['dupplication_warning'] as bool?,
      qualityBack: json['quality_back'] == null
          ? null
          : Quality.fromJson(json['quality_back'] as Map<String, dynamic>),
      checkingResultFront: json['checking_result_front'] == null
          ? null
          : CheckingResult.fromJson(
              json['checking_result_front'] as Map<String, dynamic>),
      backCornerWarning: json['back_corner_warning'] as String?,
      id: json['id'] as String?,
      backExpireWarning: json['back_expire_warning'] as String?,
      msgBack: json['msg_back'] as String?,
      birthDayProb: (json['birth_day_prob'] as num?)?.toDouble(),
      recentLocation: json['recent_location'] as String?,
      idFakeWarning: json['id_fake_warning'] as String?,
      nameProbs: (json['name_probs'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      issueDateProb: (json['issue_date_prob'] as num?)?.toDouble(),
      citizenId: json['citizen_id'] as String?,
      recentLocationProb: (json['recent_location_prob'] as num?)?.toDouble(),
      issuePlaceProb: (json['issue_place_rob'] as num?)?.toDouble(),
      nationality: json['nationality'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      nameFakeWarningProb: (json['name_fake_warning_prob'] as num?)?.toDouble(),
      expireWarning: json['expire_warning'] as String?,
      issueDateProbs: (json['issue_date_probs'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      validDateProb: (json['valid_date_prob'] as num?)?.toDouble(),
      originLocationProb: (json['origin_location_prob'] as num?)?.toDouble(),
      cornerWarning: json['corner_warning'] as String?,
      mrzValidScore: json['mrz_valid_score'] as int?,
      validDate: json['valid_date'] as String?,
      issueDate: json['issue_date'] as String?,
      idFakeProb: json['id_fake_prob'] as int?,
      mrzProb: (json['mrz_prob'] as num?)?.toDouble(),
      idProbs: json['id_probs'] as String?,
      citizenIdProb: json['citizen_id_prob'] as int?,
      dobFakeWarningProb: (json['dob_fake_warning_prob'] as num?)?.toDouble(),
      featuresProb: (json['features_prob'] as num?)?.toDouble(),
      issuePlace: json['issue_place'] as String?,
      dobFakeWarning: json['dob_fake_warning'] as bool?,
      nameFakeWarning: json['name_fake_warning'] as String?,
      typeId: json['type_id'] as int?,
      mrzProbs: (json['mrz_probs'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      cardType: json['card_type'] as String?,
      qualityFront: json['quality_front'] == null
          ? null
          : Quality.fromJson(json['quality_front'] as Map<String, dynamic>),
      matchFrontBack: json['match_front_back'] == null
          ? null
          : MatchFrontBack.fromJson(
              json['match_front_back'] as Map<String, dynamic>),
      birthDay: json['birth_day'] as String?,
      mrz: (json['mrz'] as List<dynamic>?)?.map((e) => e as String).toList(),
      issuedateFakeWarning: json['issuedate_fake_warning'] as bool?,
      tampering: json['tampering'] == null
          ? null
          : Tampering.fromJson(json['tampering'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ObjectToJson(Object instance) => <String, dynamic>{
      'origin_location': instance.originLocation,
      'name_prob': instance.nameProb,
      'msg': instance.msg,
      'cover_frob_front': instance.coverProbFront,
      'back_type_id': instance.backTypeId,
      'address_fake_warning': instance.addressFakeWarning,
      'checking_result_back': instance.checkingResultBack,
      'nation_policy': instance.nationPolicy,
      'general_warning': instance.generalWarning,
      'features': instance.features,
      'dupplication_warning': instance.dupplicationWarning,
      'quality_back': instance.qualityBack,
      'checking_result_front': instance.checkingResultFront,
      'back_corner_warning': instance.backCornerWarning,
      'id': instance.id,
      'back_expire_warning': instance.backExpireWarning,
      'msg_back': instance.msgBack,
      'birth_day_prob': instance.birthDayProb,
      'recent_location': instance.recentLocation,
      'id_fake_warning': instance.idFakeWarning,
      'name_probs': instance.nameProbs,
      'issue_date_prob': instance.issueDateProb,
      'citizen_id': instance.citizenId,
      'recent_location_prob': instance.recentLocationProb,
      'issue_place_rob': instance.issuePlaceProb,
      'nationality': instance.nationality,
      'name': instance.name,
      'gender': instance.gender,
      'name_fake_warning_prob': instance.nameFakeWarningProb,
      'expire_warning': instance.expireWarning,
      'issue_date_probs': instance.issueDateProbs,
      'valid_date_prob': instance.validDateProb,
      'origin_location_prob': instance.originLocationProb,
      'corner_warning': instance.cornerWarning,
      'mrz_valid_score': instance.mrzValidScore,
      'valid_date': instance.validDate,
      'issue_date': instance.issueDate,
      'id_fake_prob': instance.idFakeProb,
      'mrz_prob': instance.mrzProb,
      'id_probs': instance.idProbs,
      'citizen_id_prob': instance.citizenIdProb,
      'dob_fake_warning_prob': instance.dobFakeWarningProb,
      'features_prob': instance.featuresProb,
      'issue_place': instance.issuePlace,
      'dob_fake_warning': instance.dobFakeWarning,
      'name_fake_warning': instance.nameFakeWarning,
      'type_id': instance.typeId,
      'mrz_probs': instance.mrzProbs,
      'card_type': instance.cardType,
      'quality_front': instance.qualityFront,
      'match_front_back': instance.matchFrontBack,
      'birth_day': instance.birthDay,
      'mrz': instance.mrz,
      'issuedate_fake_warning': instance.issuedateFakeWarning,
      'tampering': instance.tampering,
    };

CheckingResult _$CheckingResultFromJson(Map<String, dynamic> json) =>
    CheckingResult(
      cornerCutResult: json['corner_cut_result'] as String?,
      editedProb: (json['edited_prob'] as num?)?.toDouble(),
      recapturedResult: json['recaptured_result'] as String?,
      checkPhotocopiedProb: json['check_photocopied_prob'] as int?,
      cornerCutProb: (json['corner_cut_prob'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      checkPhotocopiedResult: json['check_photocopied_result'] as String?,
      editedResult: json['edited_result'] as String?,
      recapturedProb: (json['recaptured_prob'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CheckingResultToJson(CheckingResult instance) =>
    <String, dynamic>{
      'corner_cut_result': instance.cornerCutResult,
      'edited_prob': instance.editedProb,
      'recaptured_result': instance.recapturedResult,
      'check_photocopied_prob': instance.checkPhotocopiedProb,
      'corner_cut_prob': instance.cornerCutProb,
      'check_photocopied_result': instance.checkPhotocopiedResult,
      'edited_result': instance.editedResult,
      'recaptured_prob': instance.recapturedProb,
    };

MatchFrontBack _$MatchFrontBackFromJson(Map<String, dynamic> json) =>
    MatchFrontBack(
      matchSex: json['match_sex'] as String,
      matchBod: json['match_bod'] as String,
      matchId: json['match_id'] as String,
      matchValidDate: json['match_valid_date'] as String,
      matchName: json['match_name'] as String,
    );

Map<String, dynamic> _$MatchFrontBackToJson(MatchFrontBack instance) =>
    <String, dynamic>{
      'match_sex': instance.matchSex,
      'match_bod': instance.matchBod,
      'match_id': instance.matchId,
      'match_valid_date': instance.matchValidDate,
      'match_name': instance.matchName,
    };

Quality _$QualityFromJson(Map<String, dynamic> json) => Quality(
      blurScore: (json['blur_score'] as num).toDouble(),
      brightSpotParam: BrightSpotParam.fromJson(
          json['bright_spot_param'] as Map<String, dynamic>),
      luminanceScore: (json['luminance_score'] as num).toDouble(),
      finalResult:
          FinalResult.fromJson(json['final_result'] as Map<String, dynamic>),
      brightSpotScore: json['bright_spot_score'] as int,
      resolution:
          (json['resolution'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$QualityToJson(Quality instance) => <String, dynamic>{
      'blur_score': instance.blurScore,
      'bright_spot_param': instance.brightSpotParam,
      'luminance_score': instance.luminanceScore,
      'final_result': instance.finalResult,
      'bright_spot_score': instance.brightSpotScore,
      'resolution': instance.resolution,
    };

BrightSpotParam _$BrightSpotParamFromJson(Map<String, dynamic> json) =>
    BrightSpotParam(
      averageIntensity: (json['average_intensity'] as num).toDouble(),
      brightSpotThreshold: (json['bright_spot_threshold'] as num).toDouble(),
      totalBrightSpotArea: json['total_bright_spot_area'] as int,
    );

Map<String, dynamic> _$BrightSpotParamToJson(BrightSpotParam instance) =>
    <String, dynamic>{
      'average_intensity': instance.averageIntensity,
      'bright_spot_threshold': instance.brightSpotThreshold,
      'total_bright_spot_area': instance.totalBrightSpotArea,
    };

FinalResult _$FinalResultFromJson(Map<String, dynamic> json) => FinalResult(
      badLuminanceLikelihood: json['bad_luminance_likelihood'] as String,
      lowResolutionLikelihood: json['low_resolution_likelihood'] as String,
      blurredLikelihood: json['blurred_likelihood'] as String,
      brightSpotLikelihood: json['bright_spot_likelihood'] as String,
    );

Map<String, dynamic> _$FinalResultToJson(FinalResult instance) =>
    <String, dynamic>{
      'bad_luminance_likelihood': instance.badLuminanceLikelihood,
      'low_resolution_likelihood': instance.lowResolutionLikelihood,
      'blurred_likelihood': instance.blurredLikelihood,
      'bright_spot_likelihood': instance.brightSpotLikelihood,
    };

Tampering _$TamperingFromJson(Map<String, dynamic> json) => Tampering(
      isLegal: json['is_legal'] as String,
      warning: json['warning'] as List<dynamic>,
    );

Map<String, dynamic> _$TamperingToJson(Tampering instance) => <String, dynamic>{
      'is_legal': instance.isLegal,
      'warning': instance.warning,
    };
