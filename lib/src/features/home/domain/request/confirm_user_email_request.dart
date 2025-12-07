import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'confirm_user_email_request.freezed.dart';
part 'confirm_user_email_request.g.dart';

@freezed
class ConfirmUserEmailRequest extends BaseRequest with _$ConfirmUserEmailRequest {
  const factory ConfirmUserEmailRequest({
    required String code,
  }) = _ConfirmUserEmailRequest;

  factory ConfirmUserEmailRequest.fromJson(Map<String, dynamic> json) => _$ConfirmUserEmailRequestFromJson(json);
}
