// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_otp_login_code_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOtpLoginCodeEntity _$RequestOtpLoginCodeEntityFromJson(
    Map<String, dynamic> json) {
  return _RequestOtpLoginCodeEntity.fromJson(json);
}

/// @nodoc
mixin _$RequestOtpLoginCodeEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this RequestOtpLoginCodeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOtpLoginCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOtpLoginCodeEntityCopyWith<RequestOtpLoginCodeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOtpLoginCodeEntityCopyWith<$Res> {
  factory $RequestOtpLoginCodeEntityCopyWith(RequestOtpLoginCodeEntity value,
          $Res Function(RequestOtpLoginCodeEntity) then) =
      _$RequestOtpLoginCodeEntityCopyWithImpl<$Res, RequestOtpLoginCodeEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$RequestOtpLoginCodeEntityCopyWithImpl<$Res,
        $Val extends RequestOtpLoginCodeEntity>
    implements $RequestOtpLoginCodeEntityCopyWith<$Res> {
  _$RequestOtpLoginCodeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOtpLoginCodeEntity
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
abstract class _$$RequestOtpLoginCodeEntityImplCopyWith<$Res>
    implements $RequestOtpLoginCodeEntityCopyWith<$Res> {
  factory _$$RequestOtpLoginCodeEntityImplCopyWith(
          _$RequestOtpLoginCodeEntityImpl value,
          $Res Function(_$RequestOtpLoginCodeEntityImpl) then) =
      __$$RequestOtpLoginCodeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$RequestOtpLoginCodeEntityImplCopyWithImpl<$Res>
    extends _$RequestOtpLoginCodeEntityCopyWithImpl<$Res,
        _$RequestOtpLoginCodeEntityImpl>
    implements _$$RequestOtpLoginCodeEntityImplCopyWith<$Res> {
  __$$RequestOtpLoginCodeEntityImplCopyWithImpl(
      _$RequestOtpLoginCodeEntityImpl _value,
      $Res Function(_$RequestOtpLoginCodeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOtpLoginCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$RequestOtpLoginCodeEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOtpLoginCodeEntityImpl implements _RequestOtpLoginCodeEntity {
  const _$RequestOtpLoginCodeEntityImpl({this.message});

  factory _$RequestOtpLoginCodeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOtpLoginCodeEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'RequestOtpLoginCodeEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOtpLoginCodeEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RequestOtpLoginCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOtpLoginCodeEntityImplCopyWith<_$RequestOtpLoginCodeEntityImpl>
      get copyWith => __$$RequestOtpLoginCodeEntityImplCopyWithImpl<
          _$RequestOtpLoginCodeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOtpLoginCodeEntityImplToJson(
      this,
    );
  }
}

abstract class _RequestOtpLoginCodeEntity implements RequestOtpLoginCodeEntity {
  const factory _RequestOtpLoginCodeEntity({final String? message}) =
      _$RequestOtpLoginCodeEntityImpl;

  factory _RequestOtpLoginCodeEntity.fromJson(Map<String, dynamic> json) =
      _$RequestOtpLoginCodeEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of RequestOtpLoginCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOtpLoginCodeEntityImplCopyWith<_$RequestOtpLoginCodeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
