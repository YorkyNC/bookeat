// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_phone_confirmation_code_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendPhoneConfirmationCodeEntity _$SendPhoneConfirmationCodeEntityFromJson(
    Map<String, dynamic> json) {
  return _SendPhoneConfirmationCodeEntity.fromJson(json);
}

/// @nodoc
mixin _$SendPhoneConfirmationCodeEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this SendPhoneConfirmationCodeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendPhoneConfirmationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendPhoneConfirmationCodeEntityCopyWith<SendPhoneConfirmationCodeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPhoneConfirmationCodeEntityCopyWith<$Res> {
  factory $SendPhoneConfirmationCodeEntityCopyWith(
          SendPhoneConfirmationCodeEntity value,
          $Res Function(SendPhoneConfirmationCodeEntity) then) =
      _$SendPhoneConfirmationCodeEntityCopyWithImpl<$Res,
          SendPhoneConfirmationCodeEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$SendPhoneConfirmationCodeEntityCopyWithImpl<$Res,
        $Val extends SendPhoneConfirmationCodeEntity>
    implements $SendPhoneConfirmationCodeEntityCopyWith<$Res> {
  _$SendPhoneConfirmationCodeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendPhoneConfirmationCodeEntity
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
abstract class _$$SendPhoneConfirmationCodeEntityImplCopyWith<$Res>
    implements $SendPhoneConfirmationCodeEntityCopyWith<$Res> {
  factory _$$SendPhoneConfirmationCodeEntityImplCopyWith(
          _$SendPhoneConfirmationCodeEntityImpl value,
          $Res Function(_$SendPhoneConfirmationCodeEntityImpl) then) =
      __$$SendPhoneConfirmationCodeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SendPhoneConfirmationCodeEntityImplCopyWithImpl<$Res>
    extends _$SendPhoneConfirmationCodeEntityCopyWithImpl<$Res,
        _$SendPhoneConfirmationCodeEntityImpl>
    implements _$$SendPhoneConfirmationCodeEntityImplCopyWith<$Res> {
  __$$SendPhoneConfirmationCodeEntityImplCopyWithImpl(
      _$SendPhoneConfirmationCodeEntityImpl _value,
      $Res Function(_$SendPhoneConfirmationCodeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendPhoneConfirmationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SendPhoneConfirmationCodeEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendPhoneConfirmationCodeEntityImpl
    implements _SendPhoneConfirmationCodeEntity {
  const _$SendPhoneConfirmationCodeEntityImpl({this.message});

  factory _$SendPhoneConfirmationCodeEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendPhoneConfirmationCodeEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'SendPhoneConfirmationCodeEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPhoneConfirmationCodeEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SendPhoneConfirmationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPhoneConfirmationCodeEntityImplCopyWith<
          _$SendPhoneConfirmationCodeEntityImpl>
      get copyWith => __$$SendPhoneConfirmationCodeEntityImplCopyWithImpl<
          _$SendPhoneConfirmationCodeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendPhoneConfirmationCodeEntityImplToJson(
      this,
    );
  }
}

abstract class _SendPhoneConfirmationCodeEntity
    implements SendPhoneConfirmationCodeEntity {
  const factory _SendPhoneConfirmationCodeEntity({final String? message}) =
      _$SendPhoneConfirmationCodeEntityImpl;

  factory _SendPhoneConfirmationCodeEntity.fromJson(Map<String, dynamic> json) =
      _$SendPhoneConfirmationCodeEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of SendPhoneConfirmationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPhoneConfirmationCodeEntityImplCopyWith<
          _$SendPhoneConfirmationCodeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
