import 'dart:developer';

import 'package:bookeat/src/features/auth/data/datasources/remote/authorization_remote_impl.dart';
import 'package:bookeat/src/features/auth/data/datasources/remote/i_authorization_remote.dart';
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
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@named
@LazySingleton(as: IAuthRepository)
class AuthorizationRepositoryImpl implements IAuthRepository {
  final IAuthorizationRemote _authorizationRemote;

  AuthorizationRepositoryImpl(@Named.from(AuthorizationRemoteImpl) this._authorizationRemote);
  @override
  Future<Either<DomainException, ConfirmRegistrationEntity>> confirmRegistration(
      ConfirmRegistrationRequest body) async {
    try {
      final requests = await _authorizationRemote.confirmRegistration(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ConfirmUserEmailEntity>> confirmUserEmail(ConfirmUserEmailRequest body) async {
    try {
      final requests = await _authorizationRemote.confirmUserEmail(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ConfirmUserPhoneEntity>> confirmUserPhone(ConfirmUserPhoneRequest body) async {
    try {
      final requests = await _authorizationRemote.confirmUserPhone(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, LoginEntity>> login(LoginRequest body) async {
    try {
      final requests = await _authorizationRemote.login(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, LogoutEntity>> logout(LogoutRequest body) async {
    try {
      final requests = await _authorizationRemote.logout(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, RegisterUserEntity>> register(RegisterUserRequest body) async {
    try {
      final requests = await _authorizationRemote.register(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, RequestOtpLoginCodeEntity>> requestOtpLoginCode(
      RequestOtpLoginCodeRequest body) async {
    try {
      final requests = await _authorizationRemote.requestOtpLoginCode(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, RequestPasswordResetEntity>> requestPasswordReset(
      RequestPasswordResetRequest body) async {
    try {
      final requests = await _authorizationRemote.requestPasswordReset(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ResendRegistrationCodeEntity>> resendRegistrationCode(
      ResendRegistrationCodeRequest body) async {
    try {
      final requests = await _authorizationRemote.resendRegistrationCode(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ResetPasswordEntity>> resetPassword(ResetPasswordRequest body) async {
    try {
      final requests = await _authorizationRemote.resetPassword(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, SendEmailConfirmationCodeEntity>> sendEmailConfirmationCode(
      SendEmailConfirmationCodeRequest body) async {
    try {
      final requests = await _authorizationRemote.sendEmailConfirmationCode(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, SendPhoneConfirmationCodeEntity>> sendPhoneConfirmationCode(
      SendPhoneConfirmationCodeRequest body) async {
    try {
      final requests = await _authorizationRemote.sendPhoneConfirmationCode(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, VerifyOtpAndLoginEntity>> verifyOtpAndLogin(VerifyOtpAndLoginRequest body) async {
    try {
      final requests = await _authorizationRemote.verifyOtpAndLogin(body);
      return requests.fold(
        Left.new,
        Right.new,
      );
    } catch (e) {
      log(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }
}
