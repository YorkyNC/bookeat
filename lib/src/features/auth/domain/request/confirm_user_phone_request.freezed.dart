// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_user_phone_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmUserPhoneRequest _$ConfirmUserPhoneRequestFromJson(
    Map<String, dynamic> json) {
  return _ConfirmUserPhoneRequest.fromJson(json);
}

/// @nodoc
mixin _$ConfirmUserPhoneRequest {
  String get code => throw _privateConstructorUsedError;

  /// Serializes this ConfirmUserPhoneRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmUserPhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmUserPhoneRequestCopyWith<ConfirmUserPhoneRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmUserPhoneRequestCopyWith<$Res> {
  factory $ConfirmUserPhoneRequestCopyWith(ConfirmUserPhoneRequest value,
          $Res Function(ConfirmUserPhoneRequest) then) =
      _$ConfirmUserPhoneRequestCopyWithImpl<$Res, ConfirmUserPhoneRequest>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$ConfirmUserPhoneRequestCopyWithImpl<$Res,
        $Val extends ConfirmUserPhoneRequest>
    implements $ConfirmUserPhoneRequestCopyWith<$Res> {
  _$ConfirmUserPhoneRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmUserPhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmUserPhoneRequestImplCopyWith<$Res>
    implements $ConfirmUserPhoneRequestCopyWith<$Res> {
  factory _$$ConfirmUserPhoneRequestImplCopyWith(
          _$ConfirmUserPhoneRequestImpl value,
          $Res Function(_$ConfirmUserPhoneRequestImpl) then) =
      __$$ConfirmUserPhoneRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ConfirmUserPhoneRequestImplCopyWithImpl<$Res>
    extends _$ConfirmUserPhoneRequestCopyWithImpl<$Res,
        _$ConfirmUserPhoneRequestImpl>
    implements _$$ConfirmUserPhoneRequestImplCopyWith<$Res> {
  __$$ConfirmUserPhoneRequestImplCopyWithImpl(
      _$ConfirmUserPhoneRequestImpl _value,
      $Res Function(_$ConfirmUserPhoneRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmUserPhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ConfirmUserPhoneRequestImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmUserPhoneRequestImpl implements _ConfirmUserPhoneRequest {
  const _$ConfirmUserPhoneRequestImpl({required this.code});

  factory _$ConfirmUserPhoneRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmUserPhoneRequestImplFromJson(json);

  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmUserPhoneRequest(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmUserPhoneRequestImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ConfirmUserPhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmUserPhoneRequestImplCopyWith<_$ConfirmUserPhoneRequestImpl>
      get copyWith => __$$ConfirmUserPhoneRequestImplCopyWithImpl<
          _$ConfirmUserPhoneRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmUserPhoneRequestImplToJson(
      this,
    );
  }
}

abstract class _ConfirmUserPhoneRequest implements ConfirmUserPhoneRequest {
  const factory _ConfirmUserPhoneRequest({required final String code}) =
      _$ConfirmUserPhoneRequestImpl;

  factory _ConfirmUserPhoneRequest.fromJson(Map<String, dynamic> json) =
      _$ConfirmUserPhoneRequestImpl.fromJson;

  @override
  String get code;

  /// Create a copy of ConfirmUserPhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmUserPhoneRequestImplCopyWith<_$ConfirmUserPhoneRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
