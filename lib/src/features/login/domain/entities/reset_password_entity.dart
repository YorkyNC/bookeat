import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'reset_password_entity.freezed.dart';
part 'reset_password_entity.g.dart';

@freezed
class ResetPasswordEntity extends BaseEntity with _$ResetPasswordEntity {
  const factory ResetPasswordEntity({
    String? message,
    @JsonKey(name: 'pinId') String? pinId,
    String? msisdn,
    bool? verified,
    int? attemptsRemaining,
  }) = _ResetPasswordEntity;

  factory ResetPasswordEntity.fromJson(Map<String, dynamic> json) => _$ResetPasswordEntityFromJson(json);
}
