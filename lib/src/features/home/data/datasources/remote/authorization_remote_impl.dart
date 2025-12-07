import 'dart:convert';

import 'package:bookeat/src/features/auth/domain/entities/confirm_registration_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/confirm_user_email_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/confirm_user_phone_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/login_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/logout_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/register_user_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/request_otp_login_code_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/request_password_reset_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/resend_registration_code_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/reset_password_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/send_email_confirmation_code_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/send_phone_confirmation_code_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/verify_otp_and_login_entity.dart';
import 'package:bookeat/src/features/auth/domain/request/confirm_registration_request.dart';
import 'package:bookeat/src/features/auth/domain/request/confirm_user_email_request.dart';
import 'package:bookeat/src/features/auth/domain/request/confirm_user_phone_request.dart';
import 'package:bookeat/src/features/auth/domain/request/login_request.dart';
import 'package:bookeat/src/features/auth/domain/request/logout_request.dart';
import 'package:bookeat/src/features/auth/domain/request/register_user_request.dart';
import 'package:bookeat/src/features/auth/domain/request/request_otp_login_code_request.dart';
import 'package:bookeat/src/features/auth/domain/request/request_password_reset_request.dart';
import 'package:bookeat/src/features/auth/domain/request/resend_registration_code_request.dart';
import 'package:bookeat/src/features/auth/domain/request/reset_password_request.dart';
import 'package:bookeat/src/features/auth/domain/request/send_email_confirmation_code_request.dart';
import 'package:bookeat/src/features/auth/domain/request/send_phone_confirmation_code_request.dart';
import 'package:bookeat/src/features/auth/domain/request/verify_otp_and_login_request.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import 'i_authorization_remote.dart';

@named
@LazySingleton(as: IAuthorizationRemote)
class AuthorizationRemoteImpl implements IAuthorizationRemote {
  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();

  AuthorizationRemoteImpl(this.client);
  Map<String, String> headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
  };
  @override
  Future<Either<DomainException, LoginEntity>> login(LoginRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.patch(
      '${EndPoints.baseUrl}${EndPoints.login}',
      data: request.toJson(),
      options: Options(
        method: 'PATCH',
        headers: headers,
      ),
    );

    return response.fold(
      (error) => Left(error),
      (result) async {
        if (result.statusCode == 200) {
          return Right(LoginEntity.fromJson(result.data));
        } else {
          return Left(
            UnknownException(message: result.statusMessage ?? 'Unknown error'),
          );
        }
      },
    );
  }

  @override
  Future<Either<DomainException, ConfirmRegistrationEntity>> confirmRegistration(ConfirmRegistrationRequest body) {
    // TODO: implement confirmRegistration
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, ConfirmUserEmailEntity>> confirmUserEmail(ConfirmUserEmailRequest body) {
    // TODO: implement confirmUserEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, ConfirmUserPhoneEntity>> confirmUserPhone(ConfirmUserPhoneRequest body) {
    // TODO: implement confirmUserPhone
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, LogoutEntity>> logout(LogoutRequest body) {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, RegisterUserEntity>> register(RegisterUserRequest body) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, RequestOtpLoginCodeEntity>> requestOtpLoginCode(RequestOtpLoginCodeRequest body) {
    // TODO: implement requestOtpLoginCode
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, RequestPasswordResetEntity>> requestPasswordReset(RequestPasswordResetRequest body) {
    // TODO: implement requestPasswordReset
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, ResendRegistrationCodeEntity>> resendRegistrationCode(
      ResendRegistrationCodeRequest body) {
    // TODO: implement resendRegistrationCode
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, ResetPasswordEntity>> resetPassword(ResetPasswordRequest body) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, SendEmailConfirmationCodeEntity>> sendEmailConfirmationCode(
      SendEmailConfirmationCodeRequest body) {
    // TODO: implement sendEmailConfirmationCode
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, SendPhoneConfirmationCodeEntity>> sendPhoneConfirmationCode(
      SendPhoneConfirmationCodeRequest body) {
    // TODO: implement sendPhoneConfirmationCode
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainException, VerifyOtpAndLoginEntity>> verifyOtpAndLogin(VerifyOtpAndLoginRequest body) {
    // TODO: implement verifyOtpAndLogin
    throw UnimplementedError();
  }
}
