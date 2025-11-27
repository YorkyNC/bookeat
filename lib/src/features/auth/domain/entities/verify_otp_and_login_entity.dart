import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'verify_otp_and_login_entity.freezed.dart';
part 'verify_otp_and_login_entity.g.dart';

@freezed
class VerifyOtpAndLoginEntity extends BaseEntity with _$VerifyOtpAndLoginEntity {
  const factory VerifyOtpAndLoginEntity({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _VerifyOtpAndLoginEntity;

  factory VerifyOtpAndLoginEntity.fromJson(Map<String, dynamic> json) => _$VerifyOtpAndLoginEntityFromJson(json);
}
