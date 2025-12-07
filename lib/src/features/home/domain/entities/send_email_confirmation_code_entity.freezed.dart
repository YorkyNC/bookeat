// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_email_confirmation_code_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendEmailConfirmationCodeEntity _$SendEmailConfirmationCodeEntityFromJson(
    Map<String, dynamic> json) {
  return _SendEmailConfirmationCodeEntity.fromJson(json);
}

/// @nodoc
mixin _$SendEmailConfirmationCodeEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this SendEmailConfirmationCodeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendEmailConfirmationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendEmailConfirmationCodeEntityCopyWith<SendEmailConfirmationCodeEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEmailConfirmationCodeEntityCopyWith<$Res> {
  factory $SendEmailConfirmationCodeEntityCopyWith(
          SendEmailConfirmationCodeEntity value,
          $Res Function(SendEmailConfirmationCodeEntity) then) =
      _$SendEmailConfirmationCodeEntityCopyWithImpl<$Res,
          SendEmailConfirmationCodeEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$SendEmailConfirmationCodeEntityCopyWithImpl<$Res,
        $Val extends SendEmailConfirmationCodeEntity>
    implements $SendEmailConfirmationCodeEntityCopyWith<$Res> {
  _$SendEmailConfirmationCodeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendEmailConfirmationCodeEntity
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
abstract class _$$SendEmailConfirmationCodeEntityImplCopyWith<$Res>
    implements $SendEmailConfirmationCodeEntityCopyWith<$Res> {
  factory _$$SendEmailConfirmationCodeEntityImplCopyWith(
          _$SendEmailConfirmationCodeEntityImpl value,
          $Res Function(_$SendEmailConfirmationCodeEntityImpl) then) =
      __$$SendEmailConfirmationCodeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SendEmailConfirmationCodeEntityImplCopyWithImpl<$Res>
    extends _$SendEmailConfirmationCodeEntityCopyWithImpl<$Res,
        _$SendEmailConfirmationCodeEntityImpl>
    implements _$$SendEmailConfirmationCodeEntityImplCopyWith<$Res> {
  __$$SendEmailConfirmationCodeEntityImplCopyWithImpl(
      _$SendEmailConfirmationCodeEntityImpl _value,
      $Res Function(_$SendEmailConfirmationCodeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEmailConfirmationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SendEmailConfirmationCodeEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendEmailConfirmationCodeEntityImpl
    implements _SendEmailConfirmationCodeEntity {
  const _$SendEmailConfirmationCodeEntityImpl({this.message});

  factory _$SendEmailConfirmationCodeEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendEmailConfirmationCodeEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'SendEmailConfirmationCodeEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEmailConfirmationCodeEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SendEmailConfirmationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEmailConfirmationCodeEntityImplCopyWith<
          _$SendEmailConfirmationCodeEntityImpl>
      get copyWith => __$$SendEmailConfirmationCodeEntityImplCopyWithImpl<
          _$SendEmailConfirmationCodeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendEmailConfirmationCodeEntityImplToJson(
      this,
    );
  }
}

abstract class _SendEmailConfirmationCodeEntity
    implements SendEmailConfirmationCodeEntity {
  const factory _SendEmailConfirmationCodeEntity({final String? message}) =
      _$SendEmailConfirmationCodeEntityImpl;

  factory _SendEmailConfirmationCodeEntity.fromJson(Map<String, dynamic> json) =
      _$SendEmailConfirmationCodeEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of SendEmailConfirmationCodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendEmailConfirmationCodeEntityImplCopyWith<
          _$SendEmailConfirmationCodeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
