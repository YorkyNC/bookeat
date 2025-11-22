import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'forgot_password_entity.freezed.dart';
part 'forgot_password_entity.g.dart';

@freezed
class ForgotPasswordEntity extends BaseEntity with _$ForgotPasswordEntity {
  const factory ForgotPasswordEntity({
    // required String message,
    required String pinId,
    required String to,
    required String ncStatus,
    required String smsStatus,
  }) = _ForgotPasswordEntity;

  factory ForgotPasswordEntity.fromJson(Map<String, dynamic> json) => _$ForgotPasswordEntityFromJson(json);
}
