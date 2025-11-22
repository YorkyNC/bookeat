// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPasswordEntityImpl _$$ForgotPasswordEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordEntityImpl(
      pinId: json['pinId'] as String,
      to: json['to'] as String,
      ncStatus: json['ncStatus'] as String,
      smsStatus: json['smsStatus'] as String,
    );

Map<String, dynamic> _$$ForgotPasswordEntityImplToJson(
        _$ForgotPasswordEntityImpl instance) =>
    <String, dynamic>{
      'pinId': instance.pinId,
      'to': instance.to,
      'ncStatus': instance.ncStatus,
      'smsStatus': instance.smsStatus,
    };
