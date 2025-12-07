// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordRequestImpl _$$ResetPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordRequestImpl(
      resetType: $enumDecode(_$RegistrationTypeEnumMap, json['resetType']),
      identifier: json['identifier'] as String,
      code: json['code'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$$ResetPasswordRequestImplToJson(
        _$ResetPasswordRequestImpl instance) =>
    <String, dynamic>{
      'resetType': _$RegistrationTypeEnumMap[instance.resetType]!,
      'identifier': instance.identifier,
      'code': instance.code,
      'newPassword': instance.newPassword,
    };

const _$RegistrationTypeEnumMap = {
  RegistrationType.email: 'email',
  RegistrationType.phone: 'phone',
};
