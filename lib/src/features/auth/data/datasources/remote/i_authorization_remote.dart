import 'package:fpdart/fpdart.dart';
import 'package:bookeat/src/core/exceptions/domain_exception.dart' show DomainException;
import 'package:bookeat/src/features/auth/domain/entities/forgot_password_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/logout_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/request_otp_code_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/reset_password_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/sign_in_entity.dart' show SignInEntity;
import 'package:bookeat/src/features/auth/domain/entities/sign_up_entity.dart';
import 'package:bookeat/src/features/auth/domain/entities/verify_otp_entity.dart';
import 'package:bookeat/src/features/auth/domain/request/forgot_password_request.dart';
import 'package:bookeat/src/features/auth/domain/request/logout_request.dart';
import 'package:bookeat/src/features/auth/domain/request/request_otp_code.dart';
import 'package:bookeat/src/features/auth/domain/request/reset_password_request.dart';
import 'package:bookeat/src/features/auth/domain/request/sign_in_request.dart';
import 'package:bookeat/src/features/auth/domain/request/sign_up_request.dart';
import 'package:bookeat/src/features/auth/domain/request/verify_otp_request.dart';

abstract class IAuthorizationRemote {
  Future<Either<DomainException, SignInEntity>> signIn(
    SignInRequest request,
  );
  Future<Either<DomainException, SignUpEntity>> signUp(
    SignUpRequest request,
  );
  Future<Either<DomainException, RequestOtpCodeEntity>> requestOtpCode(
    RequestOtpCode request,
  );
  Future<Either<DomainException, VerifyOtpEntity>> verifyOtp(
    VerifyOtpRequest request,
  );
  Future<Either<DomainException, ForgotPasswordEntity>> forgotPassword(
    ForgotPasswordRequest request,
  );
  Future<Either<DomainException, ResetPasswordEntity>> resetPassword(
    ResetPasswordRequest request,
  );
  Future<Either<DomainException, LogoutEntity>> logout(
    LogoutRequest request,
  );
}
