// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPasswordEntity _$ResetPasswordEntityFromJson(Map<String, dynamic> json) {
  return _ResetPasswordEntity.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordEntity {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'pinId')
  String? get pinId => throw _privateConstructorUsedError;
  String? get msisdn => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;
  int? get attemptsRemaining => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordEntityCopyWith<ResetPasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEntityCopyWith<$Res> {
  factory $ResetPasswordEntityCopyWith(
          ResetPasswordEntity value, $Res Function(ResetPasswordEntity) then) =
      _$ResetPasswordEntityCopyWithImpl<$Res, ResetPasswordEntity>;
  @useResult
  $Res call(
      {String? message,
      @JsonKey(name: 'pinId') String? pinId,
      String? msisdn,
      bool? verified,
      int? attemptsRemaining});
}

/// @nodoc
class _$ResetPasswordEntityCopyWithImpl<$Res, $Val extends ResetPasswordEntity>
    implements $ResetPasswordEntityCopyWith<$Res> {
  _$ResetPasswordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? pinId = freezed,
    Object? msisdn = freezed,
    Object? verified = freezed,
    Object? attemptsRemaining = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pinId: freezed == pinId
          ? _value.pinId
          : pinId // ignore: cast_nullable_to_non_nullable
              as String?,
      msisdn: freezed == msisdn
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      attemptsRemaining: freezed == attemptsRemaining
          ? _value.attemptsRemaining
          : attemptsRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordEntityImplCopyWith<$Res>
    implements $ResetPasswordEntityCopyWith<$Res> {
  factory _$$ResetPasswordEntityImplCopyWith(_$ResetPasswordEntityImpl value,
          $Res Function(_$ResetPasswordEntityImpl) then) =
      __$$ResetPasswordEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      @JsonKey(name: 'pinId') String? pinId,
      String? msisdn,
      bool? verified,
      int? attemptsRemaining});
}

/// @nodoc
class __$$ResetPasswordEntityImplCopyWithImpl<$Res>
    extends _$ResetPasswordEntityCopyWithImpl<$Res, _$ResetPasswordEntityImpl>
    implements _$$ResetPasswordEntityImplCopyWith<$Res> {
  __$$ResetPasswordEntityImplCopyWithImpl(_$ResetPasswordEntityImpl _value,
      $Res Function(_$ResetPasswordEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? pinId = freezed,
    Object? msisdn = freezed,
    Object? verified = freezed,
    Object? attemptsRemaining = freezed,
  }) {
    return _then(_$ResetPasswordEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pinId: freezed == pinId
          ? _value.pinId
          : pinId // ignore: cast_nullable_to_non_nullable
              as String?,
      msisdn: freezed == msisdn
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      attemptsRemaining: freezed == attemptsRemaining
          ? _value.attemptsRemaining
          : attemptsRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordEntityImpl implements _ResetPasswordEntity {
  const _$ResetPasswordEntityImpl(
      {this.message,
      @JsonKey(name: 'pinId') this.pinId,
      this.msisdn,
      this.verified,
      this.attemptsRemaining});

  factory _$ResetPasswordEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordEntityImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey(name: 'pinId')
  final String? pinId;
  @override
  final String? msisdn;
  @override
  final bool? verified;
  @override
  final int? attemptsRemaining;

  @override
  String toString() {
    return 'ResetPasswordEntity(message: $message, pinId: $pinId, msisdn: $msisdn, verified: $verified, attemptsRemaining: $attemptsRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordEntityImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pinId, pinId) || other.pinId == pinId) &&
            (identical(other.msisdn, msisdn) || other.msisdn == msisdn) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.attemptsRemaining, attemptsRemaining) ||
                other.attemptsRemaining == attemptsRemaining));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, pinId, msisdn, verified, attemptsRemaining);

  /// Create a copy of ResetPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordEntityImplCopyWith<_$ResetPasswordEntityImpl> get copyWith =>
      __$$ResetPasswordEntityImplCopyWithImpl<_$ResetPasswordEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordEntityImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordEntity implements ResetPasswordEntity {
  const factory _ResetPasswordEntity(
      {final String? message,
      @JsonKey(name: 'pinId') final String? pinId,
      final String? msisdn,
      final bool? verified,
      final int? attemptsRemaining}) = _$ResetPasswordEntityImpl;

  factory _ResetPasswordEntity.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordEntityImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: 'pinId')
  String? get pinId;
  @override
  String? get msisdn;
  @override
  bool? get verified;
  @override
  int? get attemptsRemaining;

  /// Create a copy of ResetPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordEntityImplCopyWith<_$ResetPasswordEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
