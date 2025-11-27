import '../../../../core/base/base_models/base_request.dart';

class RefreshRequest extends BaseRequest {
  const RefreshRequest({
    required this.refreshToken,
  });

  final String refreshToken;

  Map<String, dynamic> toJson() => {
        'refresh_token': refreshToken,
      };

  factory RefreshRequest.fromJson(Map<String, dynamic> json) => RefreshRequest(
        refreshToken: json['refresh_token'] as String? ?? '',
      );
}
