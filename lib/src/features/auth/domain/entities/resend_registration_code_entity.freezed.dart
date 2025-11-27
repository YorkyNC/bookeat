// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_registration_code_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendRegistrationCodeEntity _$ResendRegistrationCodeEntityFromJson(
    Map<String, dynamic> json) {
  return _ResendRegistrationCodeEntity.fromJson(json);
}

/// @nodoc
mixin _$ResendRegistrationCodeEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ResendRegistrationCodeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResendRegistrationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResendRegistrationCodeEntityCopyWith<ResendRegistrationCodeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendRegistrationCodeEntityCopyWith<$Res> {
  factory $ResendRegistrationCodeEntityCopyWith(
          ResendRegistrationCodeEntity value,
          $Res Function(ResendRegistrationCodeEntity) then) =
      _$ResendRegistrationCodeEntityCopyWithImpl<$Res,
          ResendRegistrationCodeEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ResendRegistrationCodeEntityCopyWithImpl<$Res,
        $Val extends ResendRegistrationCodeEntity>
    implements $ResendRegistrationCodeEntityCopyWith<$Res> {
  _$ResendRegistrationCodeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResendRegistrationCodeEntity
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
abstract class _$$ResendRegistrationCodeEntityImplCopyWith<$Res>
    implements $ResendRegistrationCodeEntityCopyWith<$Res> {
  factory _$$ResendRegistrationCodeEntityImplCopyWith(
          _$ResendRegistrationCodeEntityImpl value,
          $Res Function(_$ResendRegistrationCodeEntityImpl) then) =
      __$$ResendRegistrationCodeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ResendRegistrationCodeEntityImplCopyWithImpl<$Res>
    extends _$ResendRegistrationCodeEntityCopyWithImpl<$Res,
        _$ResendRegistrationCodeEntityImpl>
    implements _$$ResendRegistrationCodeEntityImplCopyWith<$Res> {
  __$$ResendRegistrationCodeEntityImplCopyWithImpl(
      _$ResendRegistrationCodeEntityImpl _value,
      $Res Function(_$ResendRegistrationCodeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResendRegistrationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ResendRegistrationCodeEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendRegistrationCodeEntityImpl
    implements _ResendRegistrationCodeEntity {
  const _$ResendRegistrationCodeEntityImpl({this.message});

  factory _$ResendRegistrationCodeEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResendRegistrationCodeEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'ResendRegistrationCodeEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendRegistrationCodeEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ResendRegistrationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendRegistrationCodeEntityImplCopyWith<
          _$ResendRegistrationCodeEntityImpl>
      get copyWith => __$$ResendRegistrationCodeEntityImplCopyWithImpl<
          _$ResendRegistrationCodeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendRegistrationCodeEntityImplToJson(
      this,
    );
  }
}

abstract class _ResendRegistrationCodeEntity
    implements ResendRegistrationCodeEntity {
  const factory _ResendRegistrationCodeEntity({final String? message}) =
      _$ResendRegistrationCodeEntityImpl;

  factory _ResendRegistrationCodeEntity.fromJson(Map<String, dynamic> json) =
      _$ResendRegistrationCodeEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of ResendRegistrationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendRegistrationCodeEntityImplCopyWith<
          _$ResendRegistrationCodeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
