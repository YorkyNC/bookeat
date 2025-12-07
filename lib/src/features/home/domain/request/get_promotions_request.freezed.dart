// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_promotions_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPromotionsRequest _$GetPromotionsRequestFromJson(Map<String, dynamic> json) {
  return _GetPromotionsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetPromotionsRequest {
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_id')
  String? get restaurantId => throw _privateConstructorUsedError;

  /// Serializes this GetPromotionsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPromotionsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPromotionsRequestCopyWith<GetPromotionsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPromotionsRequestCopyWith<$Res> {
  factory $GetPromotionsRequestCopyWith(GetPromotionsRequest value,
          $Res Function(GetPromotionsRequest) then) =
      _$GetPromotionsRequestCopyWithImpl<$Res, GetPromotionsRequest>;
  @useResult
  $Res call({int? limit, @JsonKey(name: 'restaurant_id') String? restaurantId});
}

/// @nodoc
class _$GetPromotionsRequestCopyWithImpl<$Res,
        $Val extends GetPromotionsRequest>
    implements $GetPromotionsRequestCopyWith<$Res> {
  _$GetPromotionsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPromotionsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? restaurantId = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantId: freezed == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPromotionsRequestImplCopyWith<$Res>
    implements $GetPromotionsRequestCopyWith<$Res> {
  factory _$$GetPromotionsRequestImplCopyWith(_$GetPromotionsRequestImpl value,
          $Res Function(_$GetPromotionsRequestImpl) then) =
      __$$GetPromotionsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? limit, @JsonKey(name: 'restaurant_id') String? restaurantId});
}

/// @nodoc
class __$$GetPromotionsRequestImplCopyWithImpl<$Res>
    extends _$GetPromotionsRequestCopyWithImpl<$Res, _$GetPromotionsRequestImpl>
    implements _$$GetPromotionsRequestImplCopyWith<$Res> {
  __$$GetPromotionsRequestImplCopyWithImpl(_$GetPromotionsRequestImpl _value,
      $Res Function(_$GetPromotionsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPromotionsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? restaurantId = freezed,
  }) {
    return _then(_$GetPromotionsRequestImpl(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantId: freezed == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPromotionsRequestImpl implements _GetPromotionsRequest {
  const _$GetPromotionsRequestImpl(
      {this.limit, @JsonKey(name: 'restaurant_id') this.restaurantId});

  factory _$GetPromotionsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPromotionsRequestImplFromJson(json);

  @override
  final int? limit;
  @override
  @JsonKey(name: 'restaurant_id')
  final String? restaurantId;

  @override
  String toString() {
    return 'GetPromotionsRequest(limit: $limit, restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPromotionsRequestImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, restaurantId);

  /// Create a copy of GetPromotionsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPromotionsRequestImplCopyWith<_$GetPromotionsRequestImpl>
      get copyWith =>
          __$$GetPromotionsRequestImplCopyWithImpl<_$GetPromotionsRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPromotionsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetPromotionsRequest implements GetPromotionsRequest {
  const factory _GetPromotionsRequest(
          {final int? limit,
          @JsonKey(name: 'restaurant_id') final String? restaurantId}) =
      _$GetPromotionsRequestImpl;

  factory _GetPromotionsRequest.fromJson(Map<String, dynamic> json) =
      _$GetPromotionsRequestImpl.fromJson;

  @override
  int? get limit;
  @override
  @JsonKey(name: 'restaurant_id')
  String? get restaurantId;

  /// Create a copy of GetPromotionsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPromotionsRequestImplCopyWith<_$GetPromotionsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
