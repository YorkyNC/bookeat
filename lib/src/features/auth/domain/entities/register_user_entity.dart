import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'register_user_entity.freezed.dart';
part 'register_user_entity.g.dart';

@freezed
class RegisterUserEntity extends BaseEntity with _$RegisterUserEntity {
  const factory RegisterUserEntity({
    String? message,
  }) = _RegisterUserEntity;

  factory RegisterUserEntity.fromJson(Map<String, dynamic> json) => _$RegisterUserEntityFromJson(json);
}
