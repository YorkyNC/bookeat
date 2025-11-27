import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'request_password_reset_request.freezed.dart';
part 'request_password_reset_request.g.dart';

@freezed
class RequestPasswordResetRequest extends BaseRequest with _$RequestPasswordResetRequest {
  const factory RequestPasswordResetRequest({
    required String type,
    required String value,
  }) = _RequestPasswordResetRequest;

  factory RequestPasswordResetRequest.fromJson(Map<String, dynamic> json) =>
      _$RequestPasswordResetRequestFromJson(json);
}
