// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_and_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOtpAndLoginRequest _$VerifyOtpAndLoginRequestFromJson(
    Map<String, dynamic> json) {
  return _VerifyOtpAndLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpAndLoginRequest {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this VerifyOtpAndLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyOtpAndLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyOtpAndLoginRequestCopyWith<VerifyOtpAndLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpAndLoginRequestCopyWith<$Res> {
  factory $VerifyOtpAndLoginRequestCopyWith(VerifyOtpAndLoginRequest value,
          $Res Function(VerifyOtpAndLoginRequest) then) =
      _$VerifyOtpAndLoginRequestCopyWithImpl<$Res, VerifyOtpAndLoginRequest>;
  @useResult
  $Res call({String type, String value, String code});
}

/// @nodoc
class _$VerifyOtpAndLoginRequestCopyWithImpl<$Res,
        $Val extends VerifyOtpAndLoginRequest>
    implements $VerifyOtpAndLoginRequestCopyWith<$Res> {
  _$VerifyOtpAndLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyOtpAndLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpAndLoginRequestImplCopyWith<$Res>
    implements $VerifyOtpAndLoginRequestCopyWith<$Res> {
  factory _$$VerifyOtpAndLoginRequestImplCopyWith(
          _$VerifyOtpAndLoginRequestImpl value,
          $Res Function(_$VerifyOtpAndLoginRequestImpl) then) =
      __$$VerifyOtpAndLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value, String code});
}

/// @nodoc
class __$$VerifyOtpAndLoginRequestImplCopyWithImpl<$Res>
    extends _$VerifyOtpAndLoginRequestCopyWithImpl<$Res,
        _$VerifyOtpAndLoginRequestImpl>
    implements _$$VerifyOtpAndLoginRequestImplCopyWith<$Res> {
  __$$VerifyOtpAndLoginRequestImplCopyWithImpl(
      _$VerifyOtpAndLoginRequestImpl _value,
      $Res Function(_$VerifyOtpAndLoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyOtpAndLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? code = null,
  }) {
    return _then(_$VerifyOtpAndLoginRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpAndLoginRequestImpl implements _VerifyOtpAndLoginRequest {
  const _$VerifyOtpAndLoginRequestImpl(
      {required this.type, required this.value, required this.code});

  factory _$VerifyOtpAndLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpAndLoginRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String value;
  @override
  final String code;

  @override
  String toString() {
    return 'VerifyOtpAndLoginRequest(type: $type, value: $value, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpAndLoginRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value, code);

  /// Create a copy of VerifyOtpAndLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpAndLoginRequestImplCopyWith<_$VerifyOtpAndLoginRequestImpl>
      get copyWith => __$$VerifyOtpAndLoginRequestImplCopyWithImpl<
          _$VerifyOtpAndLoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpAndLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpAndLoginRequest implements VerifyOtpAndLoginRequest {
  const factory _VerifyOtpAndLoginRequest(
      {required final String type,
      required final String value,
      required final String code}) = _$VerifyOtpAndLoginRequestImpl;

  factory _VerifyOtpAndLoginRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpAndLoginRequestImpl.fromJson;

  @override
  String get type;
  @override
  String get value;
  @override
  String get code;

  /// Create a copy of VerifyOtpAndLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpAndLoginRequestImplCopyWith<_$VerifyOtpAndLoginRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
