// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPasswordEntity _$ForgotPasswordEntityFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordEntity.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordEntity {
// required String message,
  String get pinId => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get ncStatus => throw _privateConstructorUsedError;
  String get smsStatus => throw _privateConstructorUsedError;

  /// Serializes this ForgotPasswordEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordEntityCopyWith<ForgotPasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEntityCopyWith<$Res> {
  factory $ForgotPasswordEntityCopyWith(ForgotPasswordEntity value,
          $Res Function(ForgotPasswordEntity) then) =
      _$ForgotPasswordEntityCopyWithImpl<$Res, ForgotPasswordEntity>;
  @useResult
  $Res call({String pinId, String to, String ncStatus, String smsStatus});
}

/// @nodoc
class _$ForgotPasswordEntityCopyWithImpl<$Res,
        $Val extends ForgotPasswordEntity>
    implements $ForgotPasswordEntityCopyWith<$Res> {
  _$ForgotPasswordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinId = null,
    Object? to = null,
    Object? ncStatus = null,
    Object? smsStatus = null,
  }) {
    return _then(_value.copyWith(
      pinId: null == pinId
          ? _value.pinId
          : pinId // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      ncStatus: null == ncStatus
          ? _value.ncStatus
          : ncStatus // ignore: cast_nullable_to_non_nullable
              as String,
      smsStatus: null == smsStatus
          ? _value.smsStatus
          : smsStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordEntityImplCopyWith<$Res>
    implements $ForgotPasswordEntityCopyWith<$Res> {
  factory _$$ForgotPasswordEntityImplCopyWith(_$ForgotPasswordEntityImpl value,
          $Res Function(_$ForgotPasswordEntityImpl) then) =
      __$$ForgotPasswordEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pinId, String to, String ncStatus, String smsStatus});
}

/// @nodoc
class __$$ForgotPasswordEntityImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEntityCopyWithImpl<$Res, _$ForgotPasswordEntityImpl>
    implements _$$ForgotPasswordEntityImplCopyWith<$Res> {
  __$$ForgotPasswordEntityImplCopyWithImpl(_$ForgotPasswordEntityImpl _value,
      $Res Function(_$ForgotPasswordEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinId = null,
    Object? to = null,
    Object? ncStatus = null,
    Object? smsStatus = null,
  }) {
    return _then(_$ForgotPasswordEntityImpl(
      pinId: null == pinId
          ? _value.pinId
          : pinId // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      ncStatus: null == ncStatus
          ? _value.ncStatus
          : ncStatus // ignore: cast_nullable_to_non_nullable
              as String,
      smsStatus: null == smsStatus
          ? _value.smsStatus
          : smsStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPasswordEntityImpl implements _ForgotPasswordEntity {
  const _$ForgotPasswordEntityImpl(
      {required this.pinId,
      required this.to,
      required this.ncStatus,
      required this.smsStatus});

  factory _$ForgotPasswordEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPasswordEntityImplFromJson(json);

// required String message,
  @override
  final String pinId;
  @override
  final String to;
  @override
  final String ncStatus;
  @override
  final String smsStatus;

  @override
  String toString() {
    return 'ForgotPasswordEntity(pinId: $pinId, to: $to, ncStatus: $ncStatus, smsStatus: $smsStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordEntityImpl &&
            (identical(other.pinId, pinId) || other.pinId == pinId) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.ncStatus, ncStatus) ||
                other.ncStatus == ncStatus) &&
            (identical(other.smsStatus, smsStatus) ||
                other.smsStatus == smsStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pinId, to, ncStatus, smsStatus);

  /// Create a copy of ForgotPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordEntityImplCopyWith<_$ForgotPasswordEntityImpl>
      get copyWith =>
          __$$ForgotPasswordEntityImplCopyWithImpl<_$ForgotPasswordEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordEntityImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordEntity implements ForgotPasswordEntity {
  const factory _ForgotPasswordEntity(
      {required final String pinId,
      required final String to,
      required final String ncStatus,
      required final String smsStatus}) = _$ForgotPasswordEntityImpl;

  factory _ForgotPasswordEntity.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordEntityImpl.fromJson;

// required String message,
  @override
  String get pinId;
  @override
  String get to;
  @override
  String get ncStatus;
  @override
  String get smsStatus;

  /// Create a copy of ForgotPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordEntityImplCopyWith<_$ForgotPasswordEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
