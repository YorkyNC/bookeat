import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_promotions_entity.freezed.dart';
part 'get_promotions_entity.g.dart';

@freezed
class GetPromotionsEntity with _$GetPromotionsEntity {
  const factory GetPromotionsEntity({
    required List<PromotionEntity> promotions,
  }) = _GetPromotionsEntity;

  factory GetPromotionsEntity.fromJson(Map<String, dynamic> json) => _$GetPromotionsEntityFromJson(json);
}

@freezed
class PromotionEntity with _$PromotionEntity {
  const factory PromotionEntity({
    @JsonKey(name: 'restaurant_id') required String restaurantId,
    required String name,
    required String description,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required String id,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _PromotionEntity;

  factory PromotionEntity.fromJson(Map<String, dynamic> json) => _$PromotionEntityFromJson(json);
}
