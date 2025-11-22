// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshEntity _$RefreshEntityFromJson(Map<String, dynamic> json) {
  return _RefreshEntity.fromJson(json);
}

/// @nodoc
mixin _$RefreshEntity {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  AuthStatusType get authStatus => throw _privateConstructorUsedError;

  /// Serializes this RefreshEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshEntityCopyWith<RefreshEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshEntityCopyWith<$Res> {
  factory $RefreshEntityCopyWith(
          RefreshEntity value, $Res Function(RefreshEntity) then) =
      _$RefreshEntityCopyWithImpl<$Res, RefreshEntity>;
  @useResult
  $Res call(
      {String accessToken, String refreshToken, AuthStatusType authStatus});
}

/// @nodoc
class _$RefreshEntityCopyWithImpl<$Res, $Val extends RefreshEntity>
    implements $RefreshEntityCopyWith<$Res> {
  _$RefreshEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? authStatus = null,
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
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatusType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshEntityImplCopyWith<$Res>
    implements $RefreshEntityCopyWith<$Res> {
  factory _$$RefreshEntityImplCopyWith(
          _$RefreshEntityImpl value, $Res Function(_$RefreshEntityImpl) then) =
      __$$RefreshEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken, String refreshToken, AuthStatusType authStatus});
}

/// @nodoc
class __$$RefreshEntityImplCopyWithImpl<$Res>
    extends _$RefreshEntityCopyWithImpl<$Res, _$RefreshEntityImpl>
    implements _$$RefreshEntityImplCopyWith<$Res> {
  __$$RefreshEntityImplCopyWithImpl(
      _$RefreshEntityImpl _value, $Res Function(_$RefreshEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? authStatus = null,
  }) {
    return _then(_$RefreshEntityImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatusType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshEntityImpl implements _RefreshEntity {
  const _$RefreshEntityImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.authStatus});

  factory _$RefreshEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshEntityImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final AuthStatusType authStatus;

  @override
  String toString() {
    return 'RefreshEntity(accessToken: $accessToken, refreshToken: $refreshToken, authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshEntityImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, authStatus);

  /// Create a copy of RefreshEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshEntityImplCopyWith<_$RefreshEntityImpl> get copyWith =>
      __$$RefreshEntityImplCopyWithImpl<_$RefreshEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshEntityImplToJson(
      this,
    );
  }
}

abstract class _RefreshEntity implements RefreshEntity {
  const factory _RefreshEntity(
      {required final String accessToken,
      required final String refreshToken,
      required final AuthStatusType authStatus}) = _$RefreshEntityImpl;

  factory _RefreshEntity.fromJson(Map<String, dynamic> json) =
      _$RefreshEntityImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  AuthStatusType get authStatus;

  /// Create a copy of RefreshEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshEntityImplCopyWith<_$RefreshEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
