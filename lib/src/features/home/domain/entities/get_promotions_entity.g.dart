// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_promotions_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPromotionsEntityImpl _$$GetPromotionsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPromotionsEntityImpl(
      promotions: (json['promotions'] as List<dynamic>)
          .map((e) => PromotionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetPromotionsEntityImplToJson(
        _$GetPromotionsEntityImpl instance) =>
    <String, dynamic>{
      'promotions': instance.promotions,
    };

_$PromotionEntityImpl _$$PromotionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionEntityImpl(
      restaurantId: json['restaurant_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      id: json['id'] as String,
      imageUrl: json['image_url'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$PromotionEntityImplToJson(
        _$PromotionEntityImpl instance) =>
    <String, dynamic>{
      'restaurant_id': instance.restaurantId,
      'name': instance.name,
      'description': instance.description,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'id': instance.id,
      'image_url': instance.imageUrl,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
