// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginEntity _$LoginEntityFromJson(Map<String, dynamic> json) {
  return _LoginEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginEntity {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;

  /// Serializes this LoginEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginEntityCopyWith<LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(
          LoginEntity value, $Res Function(LoginEntity) then) =
      _$LoginEntityCopyWithImpl<$Res, LoginEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res, $Val extends LoginEntity>
    implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEntity
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
abstract class _$$LoginEntityImplCopyWith<$Res>
    implements $LoginEntityCopyWith<$Res> {
  factory _$$LoginEntityImplCopyWith(
          _$LoginEntityImpl value, $Res Function(_$LoginEntityImpl) then) =
      __$$LoginEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class __$$LoginEntityImplCopyWithImpl<$Res>
    extends _$LoginEntityCopyWithImpl<$Res, _$LoginEntityImpl>
    implements _$$LoginEntityImplCopyWith<$Res> {
  __$$LoginEntityImplCopyWithImpl(
      _$LoginEntityImpl _value, $Res Function(_$LoginEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
  }) {
    return _then(_$LoginEntityImpl(
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
class _$LoginEntityImpl implements _LoginEntity {
  const _$LoginEntityImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'token_type') required this.tokenType});

  factory _$LoginEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginEntityImplFromJson(json);

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
    return 'LoginEntity(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEntityImpl &&
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

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith =>
      __$$LoginEntityImplCopyWithImpl<_$LoginEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginEntityImplToJson(
      this,
    );
  }
}

abstract class _LoginEntity implements LoginEntity {
  const factory _LoginEntity(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken,
          @JsonKey(name: 'token_type') required final String tokenType}) =
      _$LoginEntityImpl;

  factory _LoginEntity.fromJson(Map<String, dynamic> json) =
      _$LoginEntityImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
