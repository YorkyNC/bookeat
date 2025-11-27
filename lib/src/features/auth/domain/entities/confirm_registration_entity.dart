import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'confirm_registration_entity.freezed.dart';
part 'confirm_registration_entity.g.dart';

@freezed
class ConfirmRegistrationEntity extends BaseEntity with _$ConfirmRegistrationEntity {
  const factory ConfirmRegistrationEntity({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _ConfirmRegistrationEntity;

  factory ConfirmRegistrationEntity.fromJson(Map<String, dynamic> json) => _$ConfirmRegistrationEntityFromJson(json);
}
