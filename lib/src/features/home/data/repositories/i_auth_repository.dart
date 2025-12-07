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

import '../../../../core/exceptions/domain_exception.dart';

abstract class IAuthRepository {
  Future<Either<DomainException, LoginEntity>> login(LoginRequest body);

  Future<Either<DomainException, RegisterUserEntity>> register(RegisterUserRequest body);

  Future<Either<DomainException, ConfirmRegistrationEntity>> confirmRegistration(
    ConfirmRegistrationRequest body,
  );

  Future<Either<DomainException, ResendRegistrationCodeEntity>> resendRegistrationCode(
    ResendRegistrationCodeRequest body,
  );

  Future<Either<DomainException, RequestOtpLoginCodeEntity>> requestOtpLoginCode(
    RequestOtpLoginCodeRequest body,
  );

  Future<Either<DomainException, VerifyOtpAndLoginEntity>> verifyOtpAndLogin(
    VerifyOtpAndLoginRequest body,
  );

  Future<Either<DomainException, RequestPasswordResetEntity>> requestPasswordReset(
    RequestPasswordResetRequest body,
  );

  Future<Either<DomainException, ResetPasswordEntity>> resetPassword(
    ResetPasswordRequest body,
  );

  Future<Either<DomainException, LogoutEntity>> logout(LogoutRequest body);

  Future<Either<DomainException, SendEmailConfirmationCodeEntity>> sendEmailConfirmationCode(
    SendEmailConfirmationCodeRequest body,
  );

  Future<Either<DomainException, SendPhoneConfirmationCodeEntity>> sendPhoneConfirmationCode(
    SendPhoneConfirmationCodeRequest body,
  );

  Future<Either<DomainException, ConfirmUserEmailEntity>> confirmUserEmail(
    ConfirmUserEmailRequest body,
  );

  Future<Either<DomainException, ConfirmUserPhoneEntity>> confirmUserPhone(
    ConfirmUserPhoneRequest body,
  );
}
