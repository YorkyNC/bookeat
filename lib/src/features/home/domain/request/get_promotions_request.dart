import 'package:bookeat/src/core/base/base_models/base_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_promotions_request.freezed.dart';
part 'get_promotions_request.g.dart';

@freezed
class GetPromotionsRequest extends BaseRequest with _$GetPromotionsRequest {
  const factory GetPromotionsRequest({
    int? limit,
    @JsonKey(name: 'restaurant_id') String? restaurantId,
  }) = _GetPromotionsRequest;

  factory GetPromotionsRequest.fromJson(Map<String, dynamic> json) => _$GetPromotionsRequestFromJson(json);
}
