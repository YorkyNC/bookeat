import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'logout_entity.freezed.dart';
part 'logout_entity.g.dart';

@freezed
class LogoutEntity extends BaseEntity with _$LogoutEntity {
  const factory LogoutEntity({
    String? message,
  }) = _LogoutEntity;

  factory LogoutEntity.fromJson(Map<String, dynamic> json) => _$LogoutEntityFromJson(json);
}
