import 'package:bookeat/src/features/auth/domain/enum/registration_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'register_user_request.freezed.dart';
part 'register_user_request.g.dart';

@freezed
class RegisterUserRequest extends BaseRequest with _$RegisterUserRequest {
  const factory RegisterUserRequest({
    String? email,
    String? phone,
    required String password,
    required String firstName,
    required String lastName,
    required RegistrationType registrationType,
  }) = _RegisterUserRequest;

  factory RegisterUserRequest.fromJson(Map<String, dynamic> json) => _$RegisterUserRequestFromJson(json);
}
