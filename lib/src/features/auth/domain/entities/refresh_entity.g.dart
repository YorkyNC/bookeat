// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshEntityImpl _$$RefreshEntityImplFromJson(Map<String, dynamic> json) =>
    _$RefreshEntityImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      authStatus: $enumDecode(_$AuthStatusTypeEnumMap, json['authStatus']),
    );

Map<String, dynamic> _$$RefreshEntityImplToJson(_$RefreshEntityImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'authStatus': _$AuthStatusTypeEnumMap[instance.authStatus]!,
    };

const _$AuthStatusTypeEnumMap = {
  AuthStatusType.sms: 'SMS',
  AuthStatusType.pvz: 'PVZ',
  AuthStatusType.done: 'DONE',
};
