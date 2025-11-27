import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'send_phone_confirmation_code_entity.freezed.dart';
part 'send_phone_confirmation_code_entity.g.dart';

@freezed
class SendPhoneConfirmationCodeEntity extends BaseEntity with _$SendPhoneConfirmationCodeEntity {
  const factory SendPhoneConfirmationCodeEntity({
    String? message,
  }) = _SendPhoneConfirmationCodeEntity;

  factory SendPhoneConfirmationCodeEntity.fromJson(Map<String, dynamic> json) =>
      _$SendPhoneConfirmationCodeEntityFromJson(json);
}
