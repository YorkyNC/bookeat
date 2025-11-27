// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_user_phone_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmUserPhoneEntity _$ConfirmUserPhoneEntityFromJson(
    Map<String, dynamic> json) {
  return _ConfirmUserPhoneEntity.fromJson(json);
}

/// @nodoc
mixin _$ConfirmUserPhoneEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ConfirmUserPhoneEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmUserPhoneEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmUserPhoneEntityCopyWith<ConfirmUserPhoneEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmUserPhoneEntityCopyWith<$Res> {
  factory $ConfirmUserPhoneEntityCopyWith(ConfirmUserPhoneEntity value,
          $Res Function(ConfirmUserPhoneEntity) then) =
      _$ConfirmUserPhoneEntityCopyWithImpl<$Res, ConfirmUserPhoneEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ConfirmUserPhoneEntityCopyWithImpl<$Res,
        $Val extends ConfirmUserPhoneEntity>
    implements $ConfirmUserPhoneEntityCopyWith<$Res> {
  _$ConfirmUserPhoneEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmUserPhoneEntity
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
abstract class _$$ConfirmUserPhoneEntityImplCopyWith<$Res>
    implements $ConfirmUserPhoneEntityCopyWith<$Res> {
  factory _$$ConfirmUserPhoneEntityImplCopyWith(
          _$ConfirmUserPhoneEntityImpl value,
          $Res Function(_$ConfirmUserPhoneEntityImpl) then) =
      __$$ConfirmUserPhoneEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConfirmUserPhoneEntityImplCopyWithImpl<$Res>
    extends _$ConfirmUserPhoneEntityCopyWithImpl<$Res,
        _$ConfirmUserPhoneEntityImpl>
    implements _$$ConfirmUserPhoneEntityImplCopyWith<$Res> {
  __$$ConfirmUserPhoneEntityImplCopyWithImpl(
      _$ConfirmUserPhoneEntityImpl _value,
      $Res Function(_$ConfirmUserPhoneEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmUserPhoneEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ConfirmUserPhoneEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmUserPhoneEntityImpl implements _ConfirmUserPhoneEntity {
  const _$ConfirmUserPhoneEntityImpl({this.message});

  factory _$ConfirmUserPhoneEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmUserPhoneEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'ConfirmUserPhoneEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmUserPhoneEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ConfirmUserPhoneEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmUserPhoneEntityImplCopyWith<_$ConfirmUserPhoneEntityImpl>
      get copyWith => __$$ConfirmUserPhoneEntityImplCopyWithImpl<
          _$ConfirmUserPhoneEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmUserPhoneEntityImplToJson(
      this,
    );
  }
}

abstract class _ConfirmUserPhoneEntity implements ConfirmUserPhoneEntity {
  const factory _ConfirmUserPhoneEntity({final String? message}) =
      _$ConfirmUserPhoneEntityImpl;

  factory _ConfirmUserPhoneEntity.fromJson(Map<String, dynamic> json) =
      _$ConfirmUserPhoneEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of ConfirmUserPhoneEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmUserPhoneEntityImplCopyWith<_$ConfirmUserPhoneEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
