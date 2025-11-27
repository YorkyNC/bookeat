// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_otp_login_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOtpLoginCodeRequest _$RequestOtpLoginCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _RequestOtpLoginCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$RequestOtpLoginCodeRequest {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this RequestOtpLoginCodeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOtpLoginCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOtpLoginCodeRequestCopyWith<RequestOtpLoginCodeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOtpLoginCodeRequestCopyWith<$Res> {
  factory $RequestOtpLoginCodeRequestCopyWith(RequestOtpLoginCodeRequest value,
          $Res Function(RequestOtpLoginCodeRequest) then) =
      _$RequestOtpLoginCodeRequestCopyWithImpl<$Res,
          RequestOtpLoginCodeRequest>;
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class _$RequestOtpLoginCodeRequestCopyWithImpl<$Res,
        $Val extends RequestOtpLoginCodeRequest>
    implements $RequestOtpLoginCodeRequestCopyWith<$Res> {
  _$RequestOtpLoginCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOtpLoginCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOtpLoginCodeRequestImplCopyWith<$Res>
    implements $RequestOtpLoginCodeRequestCopyWith<$Res> {
  factory _$$RequestOtpLoginCodeRequestImplCopyWith(
          _$RequestOtpLoginCodeRequestImpl value,
          $Res Function(_$RequestOtpLoginCodeRequestImpl) then) =
      __$$RequestOtpLoginCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class __$$RequestOtpLoginCodeRequestImplCopyWithImpl<$Res>
    extends _$RequestOtpLoginCodeRequestCopyWithImpl<$Res,
        _$RequestOtpLoginCodeRequestImpl>
    implements _$$RequestOtpLoginCodeRequestImplCopyWith<$Res> {
  __$$RequestOtpLoginCodeRequestImplCopyWithImpl(
      _$RequestOtpLoginCodeRequestImpl _value,
      $Res Function(_$RequestOtpLoginCodeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOtpLoginCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$RequestOtpLoginCodeRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOtpLoginCodeRequestImpl implements _RequestOtpLoginCodeRequest {
  const _$RequestOtpLoginCodeRequestImpl(
      {required this.type, required this.value});

  factory _$RequestOtpLoginCodeRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestOtpLoginCodeRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String value;

  @override
  String toString() {
    return 'RequestOtpLoginCodeRequest(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOtpLoginCodeRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  /// Create a copy of RequestOtpLoginCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOtpLoginCodeRequestImplCopyWith<_$RequestOtpLoginCodeRequestImpl>
      get copyWith => __$$RequestOtpLoginCodeRequestImplCopyWithImpl<
          _$RequestOtpLoginCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOtpLoginCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _RequestOtpLoginCodeRequest
    implements RequestOtpLoginCodeRequest {
  const factory _RequestOtpLoginCodeRequest(
      {required final String type,
      required final String value}) = _$RequestOtpLoginCodeRequestImpl;

  factory _RequestOtpLoginCodeRequest.fromJson(Map<String, dynamic> json) =
      _$RequestOtpLoginCodeRequestImpl.fromJson;

  @override
  String get type;
  @override
  String get value;

  /// Create a copy of RequestOtpLoginCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOtpLoginCodeRequestImplCopyWith<_$RequestOtpLoginCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
