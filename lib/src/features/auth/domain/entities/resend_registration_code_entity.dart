import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'resend_registration_code_entity.freezed.dart';
part 'resend_registration_code_entity.g.dart';

@freezed
class ResendRegistrationCodeEntity extends BaseEntity with _$ResendRegistrationCodeEntity {
  const factory ResendRegistrationCodeEntity({
    String? message,
  }) = _ResendRegistrationCodeEntity;

  factory ResendRegistrationCodeEntity.fromJson(Map<String, dynamic> json) =>
      _$ResendRegistrationCodeEntityFromJson(json);
}
