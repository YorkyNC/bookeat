import 'dart:convert';

import '../../../../core/base/base_models/base_entity.dart';

class RefreshEntity extends BaseEntity {
  const RefreshEntity({
    required this.accessToken,
    required this.refreshToken,
    required this.tokenType,
  });

  final String accessToken;
  final String refreshToken;
  final String tokenType;

  factory RefreshEntity.fromJson(dynamic json) {
    final map = _mapFromDynamic(json);
    return RefreshEntity(
      accessToken: map['access_token'] as String? ?? '',
      refreshToken: map['refresh_token'] as String? ?? '',
      tokenType: map['token_type'] as String? ?? 'bearer',
    );
  }

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'refresh_token': refreshToken,
        'token_type': tokenType,
      };

  static Map<String, dynamic> _mapFromDynamic(dynamic json) {
    if (json is Map<String, dynamic>) {
      return json;
    }
    if (json is String) {
      try {
        final decoded = jsonDecode(json);
        if (decoded is Map<String, dynamic>) {
          return decoded;
        }
      } catch (_) {}
    }
    throw const FormatException('Invalid refresh response payload');
  }
}
