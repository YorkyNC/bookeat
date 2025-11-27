import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'request_password_reset_entity.freezed.dart';
part 'request_password_reset_entity.g.dart';

@freezed
class RequestPasswordResetEntity extends BaseEntity with _$RequestPasswordResetEntity {
  const factory RequestPasswordResetEntity({
    String? message,
  }) = _RequestPasswordResetEntity;

  factory RequestPasswordResetEntity.fromJson(Map<String, dynamic> json) => _$RequestPasswordResetEntityFromJson(json);
}
