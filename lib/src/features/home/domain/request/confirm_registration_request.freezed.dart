// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmRegistrationRequest _$ConfirmRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _ConfirmRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$ConfirmRegistrationRequest {
  String get identifier => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this ConfirmRegistrationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmRegistrationRequestCopyWith<ConfirmRegistrationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRegistrationRequestCopyWith<$Res> {
  factory $ConfirmRegistrationRequestCopyWith(ConfirmRegistrationRequest value,
          $Res Function(ConfirmRegistrationRequest) then) =
      _$ConfirmRegistrationRequestCopyWithImpl<$Res,
          ConfirmRegistrationRequest>;
  @useResult
  $Res call({String identifier, String code});
}

/// @nodoc
class _$ConfirmRegistrationRequestCopyWithImpl<$Res,
        $Val extends ConfirmRegistrationRequest>
    implements $ConfirmRegistrationRequestCopyWith<$Res> {
  _$ConfirmRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmRegistrationRequestImplCopyWith<$Res>
    implements $ConfirmRegistrationRequestCopyWith<$Res> {
  factory _$$ConfirmRegistrationRequestImplCopyWith(
          _$ConfirmRegistrationRequestImpl value,
          $Res Function(_$ConfirmRegistrationRequestImpl) then) =
      __$$ConfirmRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier, String code});
}

/// @nodoc
class __$$ConfirmRegistrationRequestImplCopyWithImpl<$Res>
    extends _$ConfirmRegistrationRequestCopyWithImpl<$Res,
        _$ConfirmRegistrationRequestImpl>
    implements _$$ConfirmRegistrationRequestImplCopyWith<$Res> {
  __$$ConfirmRegistrationRequestImplCopyWithImpl(
      _$ConfirmRegistrationRequestImpl _value,
      $Res Function(_$ConfirmRegistrationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? code = null,
  }) {
    return _then(_$ConfirmRegistrationRequestImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
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
class _$ConfirmRegistrationRequestImpl implements _ConfirmRegistrationRequest {
  const _$ConfirmRegistrationRequestImpl(
      {required this.identifier, required this.code});

  factory _$ConfirmRegistrationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConfirmRegistrationRequestImplFromJson(json);

  @override
  final String identifier;
  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmRegistrationRequest(identifier: $identifier, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmRegistrationRequestImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, code);

  /// Create a copy of ConfirmRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmRegistrationRequestImplCopyWith<_$ConfirmRegistrationRequestImpl>
      get copyWith => __$$ConfirmRegistrationRequestImplCopyWithImpl<
          _$ConfirmRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _ConfirmRegistrationRequest
    implements ConfirmRegistrationRequest {
  const factory _ConfirmRegistrationRequest(
      {required final String identifier,
      required final String code}) = _$ConfirmRegistrationRequestImpl;

  factory _ConfirmRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$ConfirmRegistrationRequestImpl.fromJson;

  @override
  String get identifier;
  @override
  String get code;

  /// Create a copy of ConfirmRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmRegistrationRequestImplCopyWith<_$ConfirmRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
