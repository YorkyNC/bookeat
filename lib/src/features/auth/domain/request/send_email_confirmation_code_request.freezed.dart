// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_email_confirmation_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendEmailConfirmationCodeRequest _$SendEmailConfirmationCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _SendEmailConfirmationCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$SendEmailConfirmationCodeRequest {
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this SendEmailConfirmationCodeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendEmailConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendEmailConfirmationCodeRequestCopyWith<SendEmailConfirmationCodeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEmailConfirmationCodeRequestCopyWith<$Res> {
  factory $SendEmailConfirmationCodeRequestCopyWith(
          SendEmailConfirmationCodeRequest value,
          $Res Function(SendEmailConfirmationCodeRequest) then) =
      _$SendEmailConfirmationCodeRequestCopyWithImpl<$Res,
          SendEmailConfirmationCodeRequest>;
  @useResult
  $Res call({String email, @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$SendEmailConfirmationCodeRequestCopyWithImpl<$Res,
        $Val extends SendEmailConfirmationCodeRequest>
    implements $SendEmailConfirmationCodeRequestCopyWith<$Res> {
  _$SendEmailConfirmationCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendEmailConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendEmailConfirmationCodeRequestImplCopyWith<$Res>
    implements $SendEmailConfirmationCodeRequestCopyWith<$Res> {
  factory _$$SendEmailConfirmationCodeRequestImplCopyWith(
          _$SendEmailConfirmationCodeRequestImpl value,
          $Res Function(_$SendEmailConfirmationCodeRequestImpl) then) =
      __$$SendEmailConfirmationCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$SendEmailConfirmationCodeRequestImplCopyWithImpl<$Res>
    extends _$SendEmailConfirmationCodeRequestCopyWithImpl<$Res,
        _$SendEmailConfirmationCodeRequestImpl>
    implements _$$SendEmailConfirmationCodeRequestImplCopyWith<$Res> {
  __$$SendEmailConfirmationCodeRequestImplCopyWithImpl(
      _$SendEmailConfirmationCodeRequestImpl _value,
      $Res Function(_$SendEmailConfirmationCodeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEmailConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? userId = null,
  }) {
    return _then(_$SendEmailConfirmationCodeRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendEmailConfirmationCodeRequestImpl
    implements _SendEmailConfirmationCodeRequest {
  const _$SendEmailConfirmationCodeRequestImpl(
      {required this.email, @JsonKey(name: 'user_id') required this.userId});

  factory _$SendEmailConfirmationCodeRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendEmailConfirmationCodeRequestImplFromJson(json);

  @override
  final String email;
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'SendEmailConfirmationCodeRequest(email: $email, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEmailConfirmationCodeRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, userId);

  /// Create a copy of SendEmailConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEmailConfirmationCodeRequestImplCopyWith<
          _$SendEmailConfirmationCodeRequestImpl>
      get copyWith => __$$SendEmailConfirmationCodeRequestImplCopyWithImpl<
          _$SendEmailConfirmationCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendEmailConfirmationCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _SendEmailConfirmationCodeRequest
    implements SendEmailConfirmationCodeRequest {
  const factory _SendEmailConfirmationCodeRequest(
          {required final String email,
          @JsonKey(name: 'user_id') required final String userId}) =
      _$SendEmailConfirmationCodeRequestImpl;

  factory _SendEmailConfirmationCodeRequest.fromJson(
          Map<String, dynamic> json) =
      _$SendEmailConfirmationCodeRequestImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of SendEmailConfirmationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendEmailConfirmationCodeRequestImplCopyWith<
          _$SendEmailConfirmationCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
