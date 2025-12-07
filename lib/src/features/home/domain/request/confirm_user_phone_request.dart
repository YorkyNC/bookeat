import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'confirm_user_phone_request.freezed.dart';
part 'confirm_user_phone_request.g.dart';

@freezed
class ConfirmUserPhoneRequest extends BaseRequest with _$ConfirmUserPhoneRequest {
  const factory ConfirmUserPhoneRequest({
    required String code,
  }) = _ConfirmUserPhoneRequest;

  factory ConfirmUserPhoneRequest.fromJson(Map<String, dynamic> json) => _$ConfirmUserPhoneRequestFromJson(json);
}
