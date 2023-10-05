import 'package:json_annotation/json_annotation.dart';

part 'identity_card.g.dart';

@JsonSerializable()
class IdentityCard {
  final Imgs? imgs;
  final String? dataSign;
  final String? dataBase64;
  final String? logID;
  final String? message;
  @JsonKey(name: "server_version")
  final String? serverVersion;
  final Object? object;
  final dynamic statusCode;
  final String? challengeCode;

  IdentityCard({
    required this.imgs,
    required this.dataSign,
    required this.dataBase64,
    required this.logID,
    required this.message,
    required this.serverVersion,
    required this.object,
    required this.statusCode,
    required this.challengeCode,
  });
  factory IdentityCard.fromJson(Map<String, dynamic> json) =>
      _$IdentityCardFromJson(json);
  Map<String, dynamic> toJson() => _$IdentityCardToJson(this);
}

@JsonSerializable()
class Imgs {
  @JsonKey(name: "img_back")
  final String? imgBack;
  @JsonKey(name: "img_front")
  final String? imgFront;

  Imgs({
    required this.imgBack,
    required this.imgFront,
  });
  factory Imgs.fromJson(Map<String, dynamic> json) => _$ImgsFromJson(json);
  Map<String, dynamic> toJson() => _$ImgsToJson(this);
}

@JsonSerializable()
class Object {
  @JsonKey(name: "origin_location")
  final String? originLocation;
  @JsonKey(name: "name_prob")
  final double? nameProb;
  @JsonKey(name: "msg")
  final String? msg;
  @JsonKey(name: "cover_frob_front")
  final int? coverProbFront;
  @JsonKey(name: "back_type_id")
  final int? backTypeId;
  @JsonKey(name: "address_fake_warning")
  final bool? addressFakeWarning;
  @JsonKey(name: "checking_result_back")
  final CheckingResult? checkingResultBack;
  @JsonKey(name: "nation_policy")
  final String? nationPolicy;
  @JsonKey(name: "general_warning")
  final List<dynamic>? generalWarning;
  @JsonKey(name: "features")
  final String? features;
  @JsonKey(name: "dupplication_warning")
  final bool? dupplicationWarning;
  @JsonKey(name: "quality_back")
  final Quality? qualityBack;
  @JsonKey(name: "checking_result_front")
  final CheckingResult? checkingResultFront;
  @JsonKey(name: "back_corner_warning")
  final String? backCornerWarning;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "back_expire_warning")
  final String? backExpireWarning;
  @JsonKey(name: "msg_back")
  final String? msgBack;
  @JsonKey(name: "birth_day_prob")
  final double? birthDayProb;
  @JsonKey(name: "recent_location")
  final String? recentLocation;
  @JsonKey(name: "id_fake_warning")
  final String? idFakeWarning;
  @JsonKey(name: "name_probs")
  final List<double>? nameProbs;
  @JsonKey(name: "issue_date_prob")
  final double? issueDateProb;
  @JsonKey(name: "citizen_id")
  final String? citizenId;
  @JsonKey(name: "recent_location_prob")
  final double? recentLocationProb;
  @JsonKey(name: "issue_place_rob")
  final double? issuePlaceProb;
  @JsonKey(name: "nationality")
  final String? nationality;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "gender")
  final String? gender;
  @JsonKey(name: "name_fake_warning_prob")
  final double? nameFakeWarningProb;
  @JsonKey(name: "expire_warning")
  final String? expireWarning;
  @JsonKey(name: "issue_date_probs")
  final List<double>? issueDateProbs;
  @JsonKey(name: "valid_date_prob")
  final double? validDateProb;
  @JsonKey(name: "origin_location_prob")
  final double? originLocationProb;
  @JsonKey(name: "corner_warning")
  final String? cornerWarning;
  @JsonKey(name: "mrz_valid_score")
  final int? mrzValidScore;
  @JsonKey(name: "valid_date")
  final String? validDate;
  @JsonKey(name: "issue_date")
  final String? issueDate;
  @JsonKey(name: "id_fake_prob")
  final int? idFakeProb;
  @JsonKey(name: "mrz_prob")
  final double? mrzProb;
  @JsonKey(name: "id_probs")
  final String? idProbs;
  @JsonKey(name: "citizen_id_prob")
  final int? citizenIdProb;
  @JsonKey(name: "dob_fake_warning_prob")
  final double? dobFakeWarningProb;
  @JsonKey(name: "features_prob")
  final double? featuresProb;
  @JsonKey(name: "issue_place")
  final String? issuePlace;
  @JsonKey(name: "dob_fake_warning")
  final bool? dobFakeWarning;
  @JsonKey(name: "name_fake_warning")
  final String? nameFakeWarning;
  @JsonKey(name: "type_id")
  final int? typeId;
  @JsonKey(name: "mrz_probs")
  final List<double>? mrzProbs;
  @JsonKey(name: "card_type")
  final String? cardType;
  @JsonKey(name: "quality_front")
  final Quality? qualityFront;
  @JsonKey(name: "match_front_back")
  final MatchFrontBack? matchFrontBack;
  @JsonKey(name: "birth_day")
  final String? birthDay;
  @JsonKey(name: "mrz")
  final List<String>? mrz;
  @JsonKey(name: "issuedate_fake_warning")
  final bool? issuedateFakeWarning;
  @JsonKey(name: "tampering")
  final Tampering? tampering;

  Object({
    required this.originLocation,
    required this.msg,
    required this.nameProb,
    required this.coverProbFront,
    required this.backTypeId,
    required this.addressFakeWarning,
    required this.checkingResultBack,
    required this.nationPolicy,
    required this.generalWarning,
    required this.features,
    required this.dupplicationWarning,
    required this.qualityBack,
    required this.checkingResultFront,
    required this.backCornerWarning,
    required this.id,
    required this.backExpireWarning,
    required this.msgBack,
    required this.birthDayProb,
    required this.recentLocation,
    required this.idFakeWarning,
    required this.nameProbs,
    required this.issueDateProb,
    required this.citizenId,
    required this.recentLocationProb,
    required this.issuePlaceProb,
    required this.nationality,
    required this.name,
    required this.gender,
    required this.nameFakeWarningProb,
    required this.expireWarning,
    required this.issueDateProbs,
    required this.validDateProb,
    required this.originLocationProb,
    required this.cornerWarning,
    required this.mrzValidScore,
    required this.validDate,
    required this.issueDate,
    required this.idFakeProb,
    required this.mrzProb,
    required this.idProbs,
    required this.citizenIdProb,
    required this.dobFakeWarningProb,
    required this.featuresProb,
    required this.issuePlace,
    required this.dobFakeWarning,
    required this.nameFakeWarning,
    required this.typeId,
    required this.mrzProbs,
    required this.cardType,
    required this.qualityFront,
    required this.matchFrontBack,
    required this.birthDay,
    required this.mrz,
    required this.issuedateFakeWarning,
    required this.tampering,
  });
  factory Object.fromJson(Map<String, dynamic> json) => _$ObjectFromJson(json);
  Map<String, dynamic> toJson() => _$ObjectToJson(this);
}

@JsonSerializable()
class CheckingResult {
  @JsonKey(name: "corner_cut_result")
  final String? cornerCutResult;
  @JsonKey(name: "edited_prob")
  final double? editedProb;
  @JsonKey(name: "recaptured_result")
  final String? recapturedResult;
  @JsonKey(name: "check_photocopied_prob")
  final int? checkPhotocopiedProb;
  @JsonKey(name: "corner_cut_prob")
  final List<double>? cornerCutProb;
  @JsonKey(name: "check_photocopied_result")
  final String? checkPhotocopiedResult;
  @JsonKey(name: "edited_result")
  final String? editedResult;
  @JsonKey(name: "recaptured_prob")
  final double? recapturedProb;

  CheckingResult({
    required this.cornerCutResult,
    required this.editedProb,
    required this.recapturedResult,
    required this.checkPhotocopiedProb,
    required this.cornerCutProb,
    required this.checkPhotocopiedResult,
    required this.editedResult,
    required this.recapturedProb,
  });
  factory CheckingResult.fromJson(Map<String, dynamic> json) =>
      _$CheckingResultFromJson(json);
  Map<String, dynamic> toJson() => _$CheckingResultToJson(this);
}

@JsonSerializable()
class MatchFrontBack {
  @JsonKey(name: "match_sex")
  final String matchSex;
  @JsonKey(name: "match_bod")
  final String matchBod;
  @JsonKey(name: "match_id")
  final String matchId;
  @JsonKey(name: "match_valid_date")
  final String matchValidDate;
  @JsonKey(name: "match_name")
  final String matchName;

  MatchFrontBack({
    required this.matchSex,
    required this.matchBod,
    required this.matchId,
    required this.matchValidDate,
    required this.matchName,
  });
  factory MatchFrontBack.fromJson(Map<String, dynamic> json) =>
      _$MatchFrontBackFromJson(json);
  Map<String, dynamic> toJson() => _$MatchFrontBackToJson(this);
}

@JsonSerializable()
class Quality {
  @JsonKey(name: "blur_score")
  final double blurScore;
  @JsonKey(name: "bright_spot_param")
  final BrightSpotParam brightSpotParam;
  @JsonKey(name: "luminance_score")
  final double luminanceScore;
  @JsonKey(name: "final_result")
  final FinalResult finalResult;
  @JsonKey(name: "bright_spot_score")
  final int brightSpotScore;
  @JsonKey(name: "resolution")
  final List<int> resolution;

  Quality({
    required this.blurScore,
    required this.brightSpotParam,
    required this.luminanceScore,
    required this.finalResult,
    required this.brightSpotScore,
    required this.resolution,
  });
  factory Quality.fromJson(Map<String, dynamic> json) =>
      _$QualityFromJson(json);
  Map<String, dynamic> toJson() => _$QualityToJson(this);
}

@JsonSerializable()
class BrightSpotParam {
  @JsonKey(name: "average_intensity")
  final double averageIntensity;
  @JsonKey(name: "bright_spot_threshold")
  final double brightSpotThreshold;
  @JsonKey(name: "total_bright_spot_area")
  final int totalBrightSpotArea;

  BrightSpotParam({
    required this.averageIntensity,
    required this.brightSpotThreshold,
    required this.totalBrightSpotArea,
  });
  factory BrightSpotParam.fromJson(Map<String, dynamic> json) =>
      _$BrightSpotParamFromJson(json);
  Map<String, dynamic> toJson() => _$BrightSpotParamToJson(this);
}

@JsonSerializable()
class FinalResult {
  @JsonKey(name: "bad_luminance_likelihood")
  final String badLuminanceLikelihood;
  @JsonKey(name: "low_resolution_likelihood")
  final String lowResolutionLikelihood;
  @JsonKey(name: "blurred_likelihood")
  final String blurredLikelihood;
  @JsonKey(name: "bright_spot_likelihood")
  final String brightSpotLikelihood;

  FinalResult({
    required this.badLuminanceLikelihood,
    required this.lowResolutionLikelihood,
    required this.blurredLikelihood,
    required this.brightSpotLikelihood,
  });
  factory FinalResult.fromJson(Map<String, dynamic> json) =>
      _$FinalResultFromJson(json);
  Map<String, dynamic> toJson() => _$FinalResultToJson(this);
}

@JsonSerializable()
class Tampering {
  @JsonKey(name: "is_legal")
  final String isLegal;
  @JsonKey(name: "warning")
  final List<dynamic> warning;

  Tampering({
    required this.isLegal,
    required this.warning,
  });
  factory Tampering.fromJson(Map<String, dynamic> json) =>
      _$TamperingFromJson(json);
  Map<String, dynamic> toJson() => _$TamperingToJson(this);
}
