// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_and_login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOtpAndLoginEntity _$VerifyOtpAndLoginEntityFromJson(
    Map<String, dynamic> json) {
  return _VerifyOtpAndLoginEntity.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpAndLoginEntity {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;

  /// Serializes this VerifyOtpAndLoginEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyOtpAndLoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyOtpAndLoginEntityCopyWith<VerifyOtpAndLoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpAndLoginEntityCopyWith<$Res> {
  factory $VerifyOtpAndLoginEntityCopyWith(VerifyOtpAndLoginEntity value,
          $Res Function(VerifyOtpAndLoginEntity) then) =
      _$VerifyOtpAndLoginEntityCopyWithImpl<$Res, VerifyOtpAndLoginEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class _$VerifyOtpAndLoginEntityCopyWithImpl<$Res,
        $Val extends VerifyOtpAndLoginEntity>
    implements $VerifyOtpAndLoginEntityCopyWith<$Res> {
  _$VerifyOtpAndLoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyOtpAndLoginEntity
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
abstract class _$$VerifyOtpAndLoginEntityImplCopyWith<$Res>
    implements $VerifyOtpAndLoginEntityCopyWith<$Res> {
  factory _$$VerifyOtpAndLoginEntityImplCopyWith(
          _$VerifyOtpAndLoginEntityImpl value,
          $Res Function(_$VerifyOtpAndLoginEntityImpl) then) =
      __$$VerifyOtpAndLoginEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class __$$VerifyOtpAndLoginEntityImplCopyWithImpl<$Res>
    extends _$VerifyOtpAndLoginEntityCopyWithImpl<$Res,
        _$VerifyOtpAndLoginEntityImpl>
    implements _$$VerifyOtpAndLoginEntityImplCopyWith<$Res> {
  __$$VerifyOtpAndLoginEntityImplCopyWithImpl(
      _$VerifyOtpAndLoginEntityImpl _value,
      $Res Function(_$VerifyOtpAndLoginEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyOtpAndLoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
  }) {
    return _then(_$VerifyOtpAndLoginEntityImpl(
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
class _$VerifyOtpAndLoginEntityImpl implements _VerifyOtpAndLoginEntity {
  const _$VerifyOtpAndLoginEntityImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'token_type') required this.tokenType});

  factory _$VerifyOtpAndLoginEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpAndLoginEntityImplFromJson(json);

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
    return 'VerifyOtpAndLoginEntity(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpAndLoginEntityImpl &&
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

  /// Create a copy of VerifyOtpAndLoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpAndLoginEntityImplCopyWith<_$VerifyOtpAndLoginEntityImpl>
      get copyWith => __$$VerifyOtpAndLoginEntityImplCopyWithImpl<
          _$VerifyOtpAndLoginEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpAndLoginEntityImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpAndLoginEntity implements VerifyOtpAndLoginEntity {
  const factory _VerifyOtpAndLoginEntity(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken,
          @JsonKey(name: 'token_type') required final String tokenType}) =
      _$VerifyOtpAndLoginEntityImpl;

  factory _VerifyOtpAndLoginEntity.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpAndLoginEntityImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;

  /// Create a copy of VerifyOtpAndLoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpAndLoginEntityImplCopyWith<_$VerifyOtpAndLoginEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
