// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_registration_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfirmRegistrationEntityImpl _$$ConfirmRegistrationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmRegistrationEntityImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$$ConfirmRegistrationEntityImplToJson(
        _$ConfirmRegistrationEntityImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
    };
