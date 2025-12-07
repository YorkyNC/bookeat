// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_user_email_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmUserEmailEntity _$ConfirmUserEmailEntityFromJson(
    Map<String, dynamic> json) {
  return _ConfirmUserEmailEntity.fromJson(json);
}

/// @nodoc
mixin _$ConfirmUserEmailEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ConfirmUserEmailEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmUserEmailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmUserEmailEntityCopyWith<ConfirmUserEmailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmUserEmailEntityCopyWith<$Res> {
  factory $ConfirmUserEmailEntityCopyWith(ConfirmUserEmailEntity value,
          $Res Function(ConfirmUserEmailEntity) then) =
      _$ConfirmUserEmailEntityCopyWithImpl<$Res, ConfirmUserEmailEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ConfirmUserEmailEntityCopyWithImpl<$Res,
        $Val extends ConfirmUserEmailEntity>
    implements $ConfirmUserEmailEntityCopyWith<$Res> {
  _$ConfirmUserEmailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmUserEmailEntity
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
abstract class _$$ConfirmUserEmailEntityImplCopyWith<$Res>
    implements $ConfirmUserEmailEntityCopyWith<$Res> {
  factory _$$ConfirmUserEmailEntityImplCopyWith(
          _$ConfirmUserEmailEntityImpl value,
          $Res Function(_$ConfirmUserEmailEntityImpl) then) =
      __$$ConfirmUserEmailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConfirmUserEmailEntityImplCopyWithImpl<$Res>
    extends _$ConfirmUserEmailEntityCopyWithImpl<$Res,
        _$ConfirmUserEmailEntityImpl>
    implements _$$ConfirmUserEmailEntityImplCopyWith<$Res> {
  __$$ConfirmUserEmailEntityImplCopyWithImpl(
      _$ConfirmUserEmailEntityImpl _value,
      $Res Function(_$ConfirmUserEmailEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmUserEmailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ConfirmUserEmailEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmUserEmailEntityImpl implements _ConfirmUserEmailEntity {
  const _$ConfirmUserEmailEntityImpl({this.message});

  factory _$ConfirmUserEmailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmUserEmailEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'ConfirmUserEmailEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmUserEmailEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ConfirmUserEmailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmUserEmailEntityImplCopyWith<_$ConfirmUserEmailEntityImpl>
      get copyWith => __$$ConfirmUserEmailEntityImplCopyWithImpl<
          _$ConfirmUserEmailEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmUserEmailEntityImplToJson(
      this,
    );
  }
}

abstract class _ConfirmUserEmailEntity implements ConfirmUserEmailEntity {
  const factory _ConfirmUserEmailEntity({final String? message}) =
      _$ConfirmUserEmailEntityImpl;

  factory _ConfirmUserEmailEntity.fromJson(Map<String, dynamic> json) =
      _$ConfirmUserEmailEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of ConfirmUserEmailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmUserEmailEntityImplCopyWith<_$ConfirmUserEmailEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
