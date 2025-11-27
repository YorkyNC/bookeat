// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_email_confirmation_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendEmailConfirmationCodeRequestImpl
    _$$SendEmailConfirmationCodeRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$SendEmailConfirmationCodeRequestImpl(
          email: json['email'] as String,
          userId: json['user_id'] as String,
        );

Map<String, dynamic> _$$SendEmailConfirmationCodeRequestImplToJson(
        _$SendEmailConfirmationCodeRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'user_id': instance.userId,
    };
