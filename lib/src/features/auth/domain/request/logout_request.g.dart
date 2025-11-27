// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogoutRequestImpl _$$LogoutRequestImplFromJson(Map<String, dynamic> json) =>
    _$LogoutRequestImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$LogoutRequestImplToJson(_$LogoutRequestImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
