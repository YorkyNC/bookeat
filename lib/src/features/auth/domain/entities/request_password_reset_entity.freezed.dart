// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_password_reset_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestPasswordResetEntity _$RequestPasswordResetEntityFromJson(
    Map<String, dynamic> json) {
  return _RequestPasswordResetEntity.fromJson(json);
}

/// @nodoc
mixin _$RequestPasswordResetEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this RequestPasswordResetEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestPasswordResetEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestPasswordResetEntityCopyWith<RequestPasswordResetEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPasswordResetEntityCopyWith<$Res> {
  factory $RequestPasswordResetEntityCopyWith(RequestPasswordResetEntity value,
          $Res Function(RequestPasswordResetEntity) then) =
      _$RequestPasswordResetEntityCopyWithImpl<$Res,
          RequestPasswordResetEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$RequestPasswordResetEntityCopyWithImpl<$Res,
        $Val extends RequestPasswordResetEntity>
    implements $RequestPasswordResetEntityCopyWith<$Res> {
  _$RequestPasswordResetEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestPasswordResetEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestPasswordResetEntityImplCopyWith<$Res>
    implements $RequestPasswordResetEntityCopyWith<$Res> {
  factory _$$RequestPasswordResetEntityImplCopyWith(
          _$RequestPasswordResetEntityImpl value,
          $Res Function(_$RequestPasswordResetEntityImpl) then) =
      __$$RequestPasswordResetEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$RequestPasswordResetEntityImplCopyWithImpl<$Res>
    extends _$RequestPasswordResetEntityCopyWithImpl<$Res,
        _$RequestPasswordResetEntityImpl>
    implements _$$RequestPasswordResetEntityImplCopyWith<$Res> {
  __$$RequestPasswordResetEntityImplCopyWithImpl(
      _$RequestPasswordResetEntityImpl _value,
      $Res Function(_$RequestPasswordResetEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestPasswordResetEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$RequestPasswordResetEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestPasswordResetEntityImpl implements _RequestPasswordResetEntity {
  const _$RequestPasswordResetEntityImpl({this.message});

  factory _$RequestPasswordResetEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestPasswordResetEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'RequestPasswordResetEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPasswordResetEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RequestPasswordResetEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPasswordResetEntityImplCopyWith<_$RequestPasswordResetEntityImpl>
      get copyWith => __$$RequestPasswordResetEntityImplCopyWithImpl<
          _$RequestPasswordResetEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestPasswordResetEntityImplToJson(
      this,
    );
  }
}

abstract class _RequestPasswordResetEntity
    implements RequestPasswordResetEntity {
  const factory _RequestPasswordResetEntity({final String? message}) =
      _$RequestPasswordResetEntityImpl;

  factory _RequestPasswordResetEntity.fromJson(Map<String, dynamic> json) =
      _$RequestPasswordResetEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of RequestPasswordResetEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestPasswordResetEntityImplCopyWith<_$RequestPasswordResetEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
