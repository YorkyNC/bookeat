// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterUserEntity _$RegisterUserEntityFromJson(Map<String, dynamic> json) {
  return _RegisterUserEntity.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this RegisterUserEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterUserEntityCopyWith<RegisterUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserEntityCopyWith<$Res> {
  factory $RegisterUserEntityCopyWith(
          RegisterUserEntity value, $Res Function(RegisterUserEntity) then) =
      _$RegisterUserEntityCopyWithImpl<$Res, RegisterUserEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$RegisterUserEntityCopyWithImpl<$Res, $Val extends RegisterUserEntity>
    implements $RegisterUserEntityCopyWith<$Res> {
  _$RegisterUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterUserEntity
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
abstract class _$$RegisterUserEntityImplCopyWith<$Res>
    implements $RegisterUserEntityCopyWith<$Res> {
  factory _$$RegisterUserEntityImplCopyWith(_$RegisterUserEntityImpl value,
          $Res Function(_$RegisterUserEntityImpl) then) =
      __$$RegisterUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$RegisterUserEntityImplCopyWithImpl<$Res>
    extends _$RegisterUserEntityCopyWithImpl<$Res, _$RegisterUserEntityImpl>
    implements _$$RegisterUserEntityImplCopyWith<$Res> {
  __$$RegisterUserEntityImplCopyWithImpl(_$RegisterUserEntityImpl _value,
      $Res Function(_$RegisterUserEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$RegisterUserEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUserEntityImpl implements _RegisterUserEntity {
  const _$RegisterUserEntityImpl({this.message});

  factory _$RegisterUserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterUserEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'RegisterUserEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserEntityImplCopyWith<_$RegisterUserEntityImpl> get copyWith =>
      __$$RegisterUserEntityImplCopyWithImpl<_$RegisterUserEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserEntityImplToJson(
      this,
    );
  }
}

abstract class _RegisterUserEntity implements RegisterUserEntity {
  const factory _RegisterUserEntity({final String? message}) =
      _$RegisterUserEntityImpl;

  factory _RegisterUserEntity.fromJson(Map<String, dynamic> json) =
      _$RegisterUserEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of RegisterUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserEntityImplCopyWith<_$RegisterUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
