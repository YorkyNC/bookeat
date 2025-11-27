// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_and_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyOtpAndLoginRequestImpl _$$VerifyOtpAndLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyOtpAndLoginRequestImpl(
      type: json['type'] as String,
      value: json['value'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$VerifyOtpAndLoginRequestImplToJson(
        _$VerifyOtpAndLoginRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'code': instance.code,
    };
