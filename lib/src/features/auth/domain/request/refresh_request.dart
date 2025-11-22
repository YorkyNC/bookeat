import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'refresh_request.freezed.dart';
part 'refresh_request.g.dart';

@freezed
class RefreshRequest extends BaseRequest with _$RefreshRequest {
  const factory RefreshRequest({
    required String refreshToken,
  }) = _RefreshRequest;

  factory RefreshRequest.fromJson(Map<String, dynamic> json) => _$RefreshRequestFromJson(json);
}
