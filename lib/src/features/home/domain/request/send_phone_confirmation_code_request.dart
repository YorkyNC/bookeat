import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'send_phone_confirmation_code_request.freezed.dart';
part 'send_phone_confirmation_code_request.g.dart';

@freezed
class SendPhoneConfirmationCodeRequest extends BaseRequest with _$SendPhoneConfirmationCodeRequest {
  const factory SendPhoneConfirmationCodeRequest({
    @JsonKey(name: 'user_id') required String userId,
  }) = _SendPhoneConfirmationCodeRequest;

  factory SendPhoneConfirmationCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$SendPhoneConfirmationCodeRequestFromJson(json);
}
