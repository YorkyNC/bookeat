import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'confirm_registration_request.freezed.dart';
part 'confirm_registration_request.g.dart';

@freezed
class ConfirmRegistrationRequest extends BaseRequest with _$ConfirmRegistrationRequest {
  const factory ConfirmRegistrationRequest({
    required String identifier,
    required String code,
  }) = _ConfirmRegistrationRequest;

  factory ConfirmRegistrationRequest.fromJson(Map<String, dynamic> json) => _$ConfirmRegistrationRequestFromJson(json);
}
