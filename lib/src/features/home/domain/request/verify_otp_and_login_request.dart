import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'verify_otp_and_login_request.freezed.dart';
part 'verify_otp_and_login_request.g.dart';

@freezed
class VerifyOtpAndLoginRequest extends BaseRequest with _$VerifyOtpAndLoginRequest {
  const factory VerifyOtpAndLoginRequest({
    required String type,
    required String value,
    required String code,
  }) = _VerifyOtpAndLoginRequest;

  factory VerifyOtpAndLoginRequest.fromJson(Map<String, dynamic> json) => _$VerifyOtpAndLoginRequestFromJson(json);
}
