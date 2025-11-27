// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_password_reset_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestPasswordResetRequest _$RequestPasswordResetRequestFromJson(
    Map<String, dynamic> json) {
  return _RequestPasswordResetRequest.fromJson(json);
}

/// @nodoc
mixin _$RequestPasswordResetRequest {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this RequestPasswordResetRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestPasswordResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestPasswordResetRequestCopyWith<RequestPasswordResetRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPasswordResetRequestCopyWith<$Res> {
  factory $RequestPasswordResetRequestCopyWith(
          RequestPasswordResetRequest value,
          $Res Function(RequestPasswordResetRequest) then) =
      _$RequestPasswordResetRequestCopyWithImpl<$Res,
          RequestPasswordResetRequest>;
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class _$RequestPasswordResetRequestCopyWithImpl<$Res,
        $Val extends RequestPasswordResetRequest>
    implements $RequestPasswordResetRequestCopyWith<$Res> {
  _$RequestPasswordResetRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestPasswordResetRequest
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
abstract class _$$RequestPasswordResetRequestImplCopyWith<$Res>
    implements $RequestPasswordResetRequestCopyWith<$Res> {
  factory _$$RequestPasswordResetRequestImplCopyWith(
          _$RequestPasswordResetRequestImpl value,
          $Res Function(_$RequestPasswordResetRequestImpl) then) =
      __$$RequestPasswordResetRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class __$$RequestPasswordResetRequestImplCopyWithImpl<$Res>
    extends _$RequestPasswordResetRequestCopyWithImpl<$Res,
        _$RequestPasswordResetRequestImpl>
    implements _$$RequestPasswordResetRequestImplCopyWith<$Res> {
  __$$RequestPasswordResetRequestImplCopyWithImpl(
      _$RequestPasswordResetRequestImpl _value,
      $Res Function(_$RequestPasswordResetRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestPasswordResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$RequestPasswordResetRequestImpl(
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
class _$RequestPasswordResetRequestImpl
    implements _RequestPasswordResetRequest {
  const _$RequestPasswordResetRequestImpl(
      {required this.type, required this.value});

  factory _$RequestPasswordResetRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestPasswordResetRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String value;

  @override
  String toString() {
    return 'RequestPasswordResetRequest(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPasswordResetRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  /// Create a copy of RequestPasswordResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPasswordResetRequestImplCopyWith<_$RequestPasswordResetRequestImpl>
      get copyWith => __$$RequestPasswordResetRequestImplCopyWithImpl<
          _$RequestPasswordResetRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestPasswordResetRequestImplToJson(
      this,
    );
  }
}

abstract class _RequestPasswordResetRequest
    implements RequestPasswordResetRequest {
  const factory _RequestPasswordResetRequest(
      {required final String type,
      required final String value}) = _$RequestPasswordResetRequestImpl;

  factory _RequestPasswordResetRequest.fromJson(Map<String, dynamic> json) =
      _$RequestPasswordResetRequestImpl.fromJson;

  @override
  String get type;
  @override
  String get value;

  /// Create a copy of RequestPasswordResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestPasswordResetRequestImplCopyWith<_$RequestPasswordResetRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
