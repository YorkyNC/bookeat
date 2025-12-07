// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_promotions_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPromotionsRequestImpl _$$GetPromotionsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPromotionsRequestImpl(
      limit: (json['limit'] as num?)?.toInt(),
      restaurantId: json['restaurant_id'] as String?,
    );

Map<String, dynamic> _$$GetPromotionsRequestImplToJson(
        _$GetPromotionsRequestImpl instance) =>
    <String, dynamic>{
      if (instance.limit case final value?) 'limit': value,
      if (instance.restaurantId case final value?) 'restaurant_id': value,
    };
