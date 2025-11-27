// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_and_login_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyOtpAndLoginEntityImpl _$$VerifyOtpAndLoginEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyOtpAndLoginEntityImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$$VerifyOtpAndLoginEntityImplToJson(
        _$VerifyOtpAndLoginEntityImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
    };
