// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_phone_confirmation_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendPhoneConfirmationCodeRequest _$SendPhoneConfirmationCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _SendPhoneConfirmationCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$SendPhoneConfirmationCodeRequest {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this SendPhoneConfirmationCodeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendPhoneConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendPhoneConfirmationCodeRequestCopyWith<SendPhoneConfirmationCodeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPhoneConfirmationCodeRequestCopyWith<$Res> {
  factory $SendPhoneConfirmationCodeRequestCopyWith(
          SendPhoneConfirmationCodeRequest value,
          $Res Function(SendPhoneConfirmationCodeRequest) then) =
      _$SendPhoneConfirmationCodeRequestCopyWithImpl<$Res,
          SendPhoneConfirmationCodeRequest>;
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$SendPhoneConfirmationCodeRequestCopyWithImpl<$Res,
        $Val extends SendPhoneConfirmationCodeRequest>
    implements $SendPhoneConfirmationCodeRequestCopyWith<$Res> {
  _$SendPhoneConfirmationCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendPhoneConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendPhoneConfirmationCodeRequestImplCopyWith<$Res>
    implements $SendPhoneConfirmationCodeRequestCopyWith<$Res> {
  factory _$$SendPhoneConfirmationCodeRequestImplCopyWith(
          _$SendPhoneConfirmationCodeRequestImpl value,
          $Res Function(_$SendPhoneConfirmationCodeRequestImpl) then) =
      __$$SendPhoneConfirmationCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$SendPhoneConfirmationCodeRequestImplCopyWithImpl<$Res>
    extends _$SendPhoneConfirmationCodeRequestCopyWithImpl<$Res,
        _$SendPhoneConfirmationCodeRequestImpl>
    implements _$$SendPhoneConfirmationCodeRequestImplCopyWith<$Res> {
  __$$SendPhoneConfirmationCodeRequestImplCopyWithImpl(
      _$SendPhoneConfirmationCodeRequestImpl _value,
      $Res Function(_$SendPhoneConfirmationCodeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendPhoneConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$SendPhoneConfirmationCodeRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendPhoneConfirmationCodeRequestImpl
    implements _SendPhoneConfirmationCodeRequest {
  const _$SendPhoneConfirmationCodeRequestImpl(
      {@JsonKey(name: 'user_id') required this.userId});

  factory _$SendPhoneConfirmationCodeRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendPhoneConfirmationCodeRequestImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'SendPhoneConfirmationCodeRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPhoneConfirmationCodeRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of SendPhoneConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPhoneConfirmationCodeRequestImplCopyWith<
          _$SendPhoneConfirmationCodeRequestImpl>
      get copyWith => __$$SendPhoneConfirmationCodeRequestImplCopyWithImpl<
          _$SendPhoneConfirmationCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendPhoneConfirmationCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _SendPhoneConfirmationCodeRequest
    implements SendPhoneConfirmationCodeRequest {
  const factory _SendPhoneConfirmationCodeRequest(
          {@JsonKey(name: 'user_id') required final String userId}) =
      _$SendPhoneConfirmationCodeRequestImpl;

  factory _SendPhoneConfirmationCodeRequest.fromJson(
          Map<String, dynamic> json) =
      _$SendPhoneConfirmationCodeRequestImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of SendPhoneConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPhoneConfirmationCodeRequestImplCopyWith<
          _$SendPhoneConfirmationCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
