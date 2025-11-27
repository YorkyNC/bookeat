import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'login_entity.freezed.dart';
part 'login_entity.g.dart';

@freezed
class LoginEntity extends BaseEntity with _$LoginEntity {
  const factory LoginEntity({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _LoginEntity;

  factory LoginEntity.fromJson(Map<String, dynamic> json) => _$LoginEntityFromJson(json);
}
