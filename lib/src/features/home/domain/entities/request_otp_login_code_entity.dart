import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'request_otp_login_code_entity.freezed.dart';
part 'request_otp_login_code_entity.g.dart';

@freezed
class RequestOtpLoginCodeEntity extends BaseEntity with _$RequestOtpLoginCodeEntity {
  const factory RequestOtpLoginCodeEntity({
    String? message,
  }) = _RequestOtpLoginCodeEntity;

  factory RequestOtpLoginCodeEntity.fromJson(Map<String, dynamic> json) => _$RequestOtpLoginCodeEntityFromJson(json);
}
