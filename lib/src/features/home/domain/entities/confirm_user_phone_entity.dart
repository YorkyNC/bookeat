import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'confirm_user_phone_entity.freezed.dart';
part 'confirm_user_phone_entity.g.dart';

@freezed
class ConfirmUserPhoneEntity extends BaseEntity with _$ConfirmUserPhoneEntity {
  const factory ConfirmUserPhoneEntity({
    String? message,
  }) = _ConfirmUserPhoneEntity;

  factory ConfirmUserPhoneEntity.fromJson(Map<String, dynamic> json) => _$ConfirmUserPhoneEntityFromJson(json);
}
