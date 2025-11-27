// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_registration_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmRegistrationEntity _$ConfirmRegistrationEntityFromJson(
    Map<String, dynamic> json) {
  return _ConfirmRegistrationEntity.fromJson(json);
}

/// @nodoc
mixin _$ConfirmRegistrationEntity {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;

  /// Serializes this ConfirmRegistrationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmRegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmRegistrationEntityCopyWith<ConfirmRegistrationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRegistrationEntityCopyWith<$Res> {
  factory $ConfirmRegistrationEntityCopyWith(ConfirmRegistrationEntity value,
          $Res Function(ConfirmRegistrationEntity) then) =
      _$ConfirmRegistrationEntityCopyWithImpl<$Res, ConfirmRegistrationEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class _$ConfirmRegistrationEntityCopyWithImpl<$Res,
        $Val extends ConfirmRegistrationEntity>
    implements $ConfirmRegistrationEntityCopyWith<$Res> {
  _$ConfirmRegistrationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmRegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmRegistrationEntityImplCopyWith<$Res>
    implements $ConfirmRegistrationEntityCopyWith<$Res> {
  factory _$$ConfirmRegistrationEntityImplCopyWith(
          _$ConfirmRegistrationEntityImpl value,
          $Res Function(_$ConfirmRegistrationEntityImpl) then) =
      __$$ConfirmRegistrationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class __$$ConfirmRegistrationEntityImplCopyWithImpl<$Res>
    extends _$ConfirmRegistrationEntityCopyWithImpl<$Res,
        _$ConfirmRegistrationEntityImpl>
    implements _$$ConfirmRegistrationEntityImplCopyWith<$Res> {
  __$$ConfirmRegistrationEntityImplCopyWithImpl(
      _$ConfirmRegistrationEntityImpl _value,
      $Res Function(_$ConfirmRegistrationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmRegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
  }) {
    return _then(_$ConfirmRegistrationEntityImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmRegistrationEntityImpl implements _ConfirmRegistrationEntity {
  const _$ConfirmRegistrationEntityImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'token_type') required this.tokenType});

  factory _$ConfirmRegistrationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmRegistrationEntityImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;

  @override
  String toString() {
    return 'ConfirmRegistrationEntity(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmRegistrationEntityImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, tokenType);

  /// Create a copy of ConfirmRegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmRegistrationEntityImplCopyWith<_$ConfirmRegistrationEntityImpl>
      get copyWith => __$$ConfirmRegistrationEntityImplCopyWithImpl<
          _$ConfirmRegistrationEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmRegistrationEntityImplToJson(
      this,
    );
  }
}

abstract class _ConfirmRegistrationEntity implements ConfirmRegistrationEntity {
  const factory _ConfirmRegistrationEntity(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken,
          @JsonKey(name: 'token_type') required final String tokenType}) =
      _$ConfirmRegistrationEntityImpl;

  factory _ConfirmRegistrationEntity.fromJson(Map<String, dynamic> json) =
      _$ConfirmRegistrationEntityImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;

  /// Create a copy of ConfirmRegistrationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmRegistrationEntityImplCopyWith<_$ConfirmRegistrationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
