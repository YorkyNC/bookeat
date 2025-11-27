// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUserRequestImpl _$$RegisterUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserRequestImpl(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      registrationType:
          $enumDecode(_$RegistrationTypeEnumMap, json['registrationType']),
    );

Map<String, dynamic> _$$RegisterUserRequestImplToJson(
        _$RegisterUserRequestImpl instance) =>
    <String, dynamic>{
      if (instance.email case final value?) 'email': value,
      if (instance.phone case final value?) 'phone': value,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'registrationType': _$RegistrationTypeEnumMap[instance.registrationType]!,
    };

const _$RegistrationTypeEnumMap = {
  RegistrationType.email: 'email',
  RegistrationType.phone: 'phone',
};
