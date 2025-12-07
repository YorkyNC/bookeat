import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'request_otp_login_code_request.freezed.dart';
part 'request_otp_login_code_request.g.dart';

@freezed
class RequestOtpLoginCodeRequest extends BaseRequest with _$RequestOtpLoginCodeRequest {
  const factory RequestOtpLoginCodeRequest({
    required String type,
    required String value,
  }) = _RequestOtpLoginCodeRequest;

  factory RequestOtpLoginCodeRequest.fromJson(Map<String, dynamic> json) => _$RequestOtpLoginCodeRequestFromJson(json);
}
