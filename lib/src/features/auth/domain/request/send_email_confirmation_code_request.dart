import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'send_email_confirmation_code_request.freezed.dart';
part 'send_email_confirmation_code_request.g.dart';

@freezed
class SendEmailConfirmationCodeRequest extends BaseRequest with _$SendEmailConfirmationCodeRequest {
  const factory SendEmailConfirmationCodeRequest({
    required String email,
    @JsonKey(name: 'user_id') required String userId,
  }) = _SendEmailConfirmationCodeRequest;

  factory SendEmailConfirmationCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$SendEmailConfirmationCodeRequestFromJson(json);
}
