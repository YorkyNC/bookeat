import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'resend_registration_code_request.freezed.dart';
part 'resend_registration_code_request.g.dart';

@freezed
class ResendRegistrationCodeRequest extends BaseRequest with _$ResendRegistrationCodeRequest {
  const factory ResendRegistrationCodeRequest({
    required String identifier,
  }) = _ResendRegistrationCodeRequest;

  factory ResendRegistrationCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ResendRegistrationCodeRequestFromJson(json);
}
