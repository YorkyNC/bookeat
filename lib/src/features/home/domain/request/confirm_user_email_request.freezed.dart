// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_user_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmUserEmailRequest _$ConfirmUserEmailRequestFromJson(
    Map<String, dynamic> json) {
  return _ConfirmUserEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$ConfirmUserEmailRequest {
  String get code => throw _privateConstructorUsedError;

  /// Serializes this ConfirmUserEmailRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmUserEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmUserEmailRequestCopyWith<ConfirmUserEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmUserEmailRequestCopyWith<$Res> {
  factory $ConfirmUserEmailRequestCopyWith(ConfirmUserEmailRequest value,
          $Res Function(ConfirmUserEmailRequest) then) =
      _$ConfirmUserEmailRequestCopyWithImpl<$Res, ConfirmUserEmailRequest>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$ConfirmUserEmailRequestCopyWithImpl<$Res,
        $Val extends ConfirmUserEmailRequest>
    implements $ConfirmUserEmailRequestCopyWith<$Res> {
  _$ConfirmUserEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmUserEmailRequest
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
abstract class _$$ConfirmUserEmailRequestImplCopyWith<$Res>
    implements $ConfirmUserEmailRequestCopyWith<$Res> {
  factory _$$ConfirmUserEmailRequestImplCopyWith(
          _$ConfirmUserEmailRequestImpl value,
          $Res Function(_$ConfirmUserEmailRequestImpl) then) =
      __$$ConfirmUserEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ConfirmUserEmailRequestImplCopyWithImpl<$Res>
    extends _$ConfirmUserEmailRequestCopyWithImpl<$Res,
        _$ConfirmUserEmailRequestImpl>
    implements _$$ConfirmUserEmailRequestImplCopyWith<$Res> {
  __$$ConfirmUserEmailRequestImplCopyWithImpl(
      _$ConfirmUserEmailRequestImpl _value,
      $Res Function(_$ConfirmUserEmailRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmUserEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ConfirmUserEmailRequestImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmUserEmailRequestImpl implements _ConfirmUserEmailRequest {
  const _$ConfirmUserEmailRequestImpl({required this.code});

  factory _$ConfirmUserEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmUserEmailRequestImplFromJson(json);

  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmUserEmailRequest(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmUserEmailRequestImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ConfirmUserEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmUserEmailRequestImplCopyWith<_$ConfirmUserEmailRequestImpl>
      get copyWith => __$$ConfirmUserEmailRequestImplCopyWithImpl<
          _$ConfirmUserEmailRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmUserEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _ConfirmUserEmailRequest implements ConfirmUserEmailRequest {
  const factory _ConfirmUserEmailRequest({required final String code}) =
      _$ConfirmUserEmailRequestImpl;

  factory _ConfirmUserEmailRequest.fromJson(Map<String, dynamic> json) =
      _$ConfirmUserEmailRequestImpl.fromJson;

  @override
  String get code;

  /// Create a copy of ConfirmUserEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmUserEmailRequestImplCopyWith<_$ConfirmUserEmailRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
