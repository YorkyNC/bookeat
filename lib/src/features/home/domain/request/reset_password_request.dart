import 'package:bookeat/src/features/auth/domain/enum/registration_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'reset_password_request.freezed.dart';
part 'reset_password_request.g.dart';

@freezed
class ResetPasswordRequest extends BaseRequest with _$ResetPasswordRequest {
  const factory ResetPasswordRequest({
    required RegistrationType resetType,
    required String identifier,
    required String code,
    required String newPassword,
  }) = _ResetPasswordRequest;

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestFromJson(json);
}
