import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookeat/src/features/auth/domain/enum/auth_status_type.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'refresh_entity.freezed.dart';
part 'refresh_entity.g.dart';

@freezed
class RefreshEntity extends BaseEntity with _$RefreshEntity {
  const factory RefreshEntity({
    required String accessToken,
    required String refreshToken,
    required AuthStatusType authStatus,
  }) = _RefreshEntity;

  factory RefreshEntity.fromJson(Map<String, dynamic> json) => _$RefreshEntityFromJson(json);
}
