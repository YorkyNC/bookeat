import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'confirm_user_email_entity.freezed.dart';
part 'confirm_user_email_entity.g.dart';

@freezed
class ConfirmUserEmailEntity extends BaseEntity with _$ConfirmUserEmailEntity {
  const factory ConfirmUserEmailEntity({
    String? message,
  }) = _ConfirmUserEmailEntity;

  factory ConfirmUserEmailEntity.fromJson(Map<String, dynamic> json) => _$ConfirmUserEmailEntityFromJson(json);
}
