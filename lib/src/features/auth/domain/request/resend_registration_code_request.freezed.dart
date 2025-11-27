// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_registration_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendRegistrationCodeRequest _$ResendRegistrationCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _ResendRegistrationCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$ResendRegistrationCodeRequest {
  String get identifier => throw _privateConstructorUsedError;

  /// Serializes this ResendRegistrationCodeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResendRegistrationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResendRegistrationCodeRequestCopyWith<ResendRegistrationCodeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendRegistrationCodeRequestCopyWith<$Res> {
  factory $ResendRegistrationCodeRequestCopyWith(
          ResendRegistrationCodeRequest value,
          $Res Function(ResendRegistrationCodeRequest) then) =
      _$ResendRegistrationCodeRequestCopyWithImpl<$Res,
          ResendRegistrationCodeRequest>;
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class _$ResendRegistrationCodeRequestCopyWithImpl<$Res,
        $Val extends ResendRegistrationCodeRequest>
    implements $ResendRegistrationCodeRequestCopyWith<$Res> {
  _$ResendRegistrationCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResendRegistrationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendRegistrationCodeRequestImplCopyWith<$Res>
    implements $ResendRegistrationCodeRequestCopyWith<$Res> {
  factory _$$ResendRegistrationCodeRequestImplCopyWith(
          _$ResendRegistrationCodeRequestImpl value,
          $Res Function(_$ResendRegistrationCodeRequestImpl) then) =
      __$$ResendRegistrationCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class __$$ResendRegistrationCodeRequestImplCopyWithImpl<$Res>
    extends _$ResendRegistrationCodeRequestCopyWithImpl<$Res,
        _$ResendRegistrationCodeRequestImpl>
    implements _$$ResendRegistrationCodeRequestImplCopyWith<$Res> {
  __$$ResendRegistrationCodeRequestImplCopyWithImpl(
      _$ResendRegistrationCodeRequestImpl _value,
      $Res Function(_$ResendRegistrationCodeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResendRegistrationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_$ResendRegistrationCodeRequestImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendRegistrationCodeRequestImpl
    implements _ResendRegistrationCodeRequest {
  const _$ResendRegistrationCodeRequestImpl({required this.identifier});

  factory _$ResendRegistrationCodeRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResendRegistrationCodeRequestImplFromJson(json);

  @override
  final String identifier;

  @override
  String toString() {
    return 'ResendRegistrationCodeRequest(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendRegistrationCodeRequestImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  /// Create a copy of ResendRegistrationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendRegistrationCodeRequestImplCopyWith<
          _$ResendRegistrationCodeRequestImpl>
      get copyWith => __$$ResendRegistrationCodeRequestImplCopyWithImpl<
          _$ResendRegistrationCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendRegistrationCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _ResendRegistrationCodeRequest
    implements ResendRegistrationCodeRequest {
  const factory _ResendRegistrationCodeRequest(
      {required final String identifier}) = _$ResendRegistrationCodeRequestImpl;

  factory _ResendRegistrationCodeRequest.fromJson(Map<String, dynamic> json) =
      _$ResendRegistrationCodeRequestImpl.fromJson;

  @override
  String get identifier;

  /// Create a copy of ResendRegistrationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendRegistrationCodeRequestImplCopyWith<
          _$ResendRegistrationCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
