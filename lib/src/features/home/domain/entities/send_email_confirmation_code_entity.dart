import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'send_email_confirmation_code_entity.freezed.dart';
part 'send_email_confirmation_code_entity.g.dart';

@freezed
class SendEmailConfirmationCodeEntity extends BaseEntity with _$SendEmailConfirmationCodeEntity {
  const factory SendEmailConfirmationCodeEntity({
    String? message,
  }) = _SendEmailConfirmationCodeEntity;

  factory SendEmailConfirmationCodeEntity.fromJson(Map<String, dynamic> json) =>
      _$SendEmailConfirmationCodeEntityFromJson(json);
}
