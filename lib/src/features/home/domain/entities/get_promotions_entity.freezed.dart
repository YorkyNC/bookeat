// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_promotions_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPromotionsEntity _$GetPromotionsEntityFromJson(Map<String, dynamic> json) {
  return _GetPromotionsEntity.fromJson(json);
}

/// @nodoc
mixin _$GetPromotionsEntity {
  List<PromotionEntity> get promotions => throw _privateConstructorUsedError;

  /// Serializes this GetPromotionsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPromotionsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPromotionsEntityCopyWith<GetPromotionsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPromotionsEntityCopyWith<$Res> {
  factory $GetPromotionsEntityCopyWith(
          GetPromotionsEntity value, $Res Function(GetPromotionsEntity) then) =
      _$GetPromotionsEntityCopyWithImpl<$Res, GetPromotionsEntity>;
  @useResult
  $Res call({List<PromotionEntity> promotions});
}

/// @nodoc
class _$GetPromotionsEntityCopyWithImpl<$Res, $Val extends GetPromotionsEntity>
    implements $GetPromotionsEntityCopyWith<$Res> {
  _$GetPromotionsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPromotionsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotions = null,
  }) {
    return _then(_value.copyWith(
      promotions: null == promotions
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<PromotionEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPromotionsEntityImplCopyWith<$Res>
    implements $GetPromotionsEntityCopyWith<$Res> {
  factory _$$GetPromotionsEntityImplCopyWith(_$GetPromotionsEntityImpl value,
          $Res Function(_$GetPromotionsEntityImpl) then) =
      __$$GetPromotionsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PromotionEntity> promotions});
}

/// @nodoc
class __$$GetPromotionsEntityImplCopyWithImpl<$Res>
    extends _$GetPromotionsEntityCopyWithImpl<$Res, _$GetPromotionsEntityImpl>
    implements _$$GetPromotionsEntityImplCopyWith<$Res> {
  __$$GetPromotionsEntityImplCopyWithImpl(_$GetPromotionsEntityImpl _value,
      $Res Function(_$GetPromotionsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPromotionsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotions = null,
  }) {
    return _then(_$GetPromotionsEntityImpl(
      promotions: null == promotions
          ? _value._promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<PromotionEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPromotionsEntityImpl implements _GetPromotionsEntity {
  const _$GetPromotionsEntityImpl(
      {required final List<PromotionEntity> promotions})
      : _promotions = promotions;

  factory _$GetPromotionsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPromotionsEntityImplFromJson(json);

  final List<PromotionEntity> _promotions;
  @override
  List<PromotionEntity> get promotions {
    if (_promotions is EqualUnmodifiableListView) return _promotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotions);
  }

  @override
  String toString() {
    return 'GetPromotionsEntity(promotions: $promotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPromotionsEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._promotions, _promotions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_promotions));

  /// Create a copy of GetPromotionsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPromotionsEntityImplCopyWith<_$GetPromotionsEntityImpl> get copyWith =>
      __$$GetPromotionsEntityImplCopyWithImpl<_$GetPromotionsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPromotionsEntityImplToJson(
      this,
    );
  }
}

abstract class _GetPromotionsEntity implements GetPromotionsEntity {
  const factory _GetPromotionsEntity(
          {required final List<PromotionEntity> promotions}) =
      _$GetPromotionsEntityImpl;

  factory _GetPromotionsEntity.fromJson(Map<String, dynamic> json) =
      _$GetPromotionsEntityImpl.fromJson;

  @override
  List<PromotionEntity> get promotions;

  /// Create a copy of GetPromotionsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPromotionsEntityImplCopyWith<_$GetPromotionsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PromotionEntity _$PromotionEntityFromJson(Map<String, dynamic> json) {
  return _PromotionEntity.fromJson(json);
}

/// @nodoc
mixin _$PromotionEntity {
  @JsonKey(name: 'restaurant_id')
  String get restaurantId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PromotionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromotionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionEntityCopyWith<PromotionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionEntityCopyWith<$Res> {
  factory $PromotionEntityCopyWith(
          PromotionEntity value, $Res Function(PromotionEntity) then) =
      _$PromotionEntityCopyWithImpl<$Res, PromotionEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'restaurant_id') String restaurantId,
      String name,
      String description,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$PromotionEntityCopyWithImpl<$Res, $Val extends PromotionEntity>
    implements $PromotionEntityCopyWith<$Res> {
  _$PromotionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? id = null,
    Object? imageUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionEntityImplCopyWith<$Res>
    implements $PromotionEntityCopyWith<$Res> {
  factory _$$PromotionEntityImplCopyWith(_$PromotionEntityImpl value,
          $Res Function(_$PromotionEntityImpl) then) =
      __$$PromotionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'restaurant_id') String restaurantId,
      String name,
      String description,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$PromotionEntityImplCopyWithImpl<$Res>
    extends _$PromotionEntityCopyWithImpl<$Res, _$PromotionEntityImpl>
    implements _$$PromotionEntityImplCopyWith<$Res> {
  __$$PromotionEntityImplCopyWithImpl(
      _$PromotionEntityImpl _value, $Res Function(_$PromotionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? id = null,
    Object? imageUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PromotionEntityImpl(
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionEntityImpl implements _PromotionEntity {
  const _$PromotionEntityImpl(
      {@JsonKey(name: 'restaurant_id') required this.restaurantId,
      required this.name,
      required this.description,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.id,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$PromotionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionEntityImplFromJson(json);

  @override
  @JsonKey(name: 'restaurant_id')
  final String restaurantId;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  final String id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'PromotionEntity(restaurantId: $restaurantId, name: $name, description: $description, startDate: $startDate, endDate: $endDate, id: $id, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionEntityImpl &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, restaurantId, name, description,
      startDate, endDate, id, imageUrl, createdAt, updatedAt);

  /// Create a copy of PromotionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionEntityImplCopyWith<_$PromotionEntityImpl> get copyWith =>
      __$$PromotionEntityImplCopyWithImpl<_$PromotionEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionEntityImplToJson(
      this,
    );
  }
}

abstract class _PromotionEntity implements PromotionEntity {
  const factory _PromotionEntity(
          {@JsonKey(name: 'restaurant_id') required final String restaurantId,
          required final String name,
          required final String description,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          required final String id,
          @JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$PromotionEntityImpl;

  factory _PromotionEntity.fromJson(Map<String, dynamic> json) =
      _$PromotionEntityImpl.fromJson;

  @override
  @JsonKey(name: 'restaurant_id')
  String get restaurantId;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  String get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of PromotionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionEntityImplCopyWith<_$PromotionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
