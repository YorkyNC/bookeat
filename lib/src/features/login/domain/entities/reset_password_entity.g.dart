// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordEntityImpl _$$ResetPasswordEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordEntityImpl(
      message: json['message'] as String?,
      pinId: json['pinId'] as String?,
      msisdn: json['msisdn'] as String?,
      verified: json['verified'] as bool?,
      attemptsRemaining: (json['attemptsRemaining'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResetPasswordEntityImplToJson(
        _$ResetPasswordEntityImpl instance) =>
    <String, dynamic>{
      if (instance.message case final value?) 'message': value,
      if (instance.pinId case final value?) 'pinId': value,
      if (instance.msisdn case final value?) 'msisdn': value,
      if (instance.verified case final value?) 'verified': value,
      if (instance.attemptsRemaining case final value?)
        'attemptsRemaining': value,
    };
