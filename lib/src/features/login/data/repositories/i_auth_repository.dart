import 'package:fpdart/fpdart.dart';
import 'package:bookeat/src/features/login/domain/entities/forgot_password_entity.dart';
import 'package:bookeat/src/features/login/domain/entities/logout_entity.dart';
import 'package:bookeat/src/features/login/domain/entities/request_otp_code_entity.dart';
import 'package:bookeat/src/features/login/domain/entities/reset_password_entity.dart';
import 'package:bookeat/src/features/login/domain/entities/sign_in_entity.dart';
import 'package:bookeat/src/features/login/domain/entities/sign_up_entity.dart';
import 'package:bookeat/src/features/login/domain/entities/verify_otp_entity.dart';
import 'package:bookeat/src/features/login/domain/request/forgot_password_request.dart';
import 'package:bookeat/src/features/login/domain/request/logout_request.dart';
import 'package:bookeat/src/features/login/domain/request/request_otp_code.dart';
import 'package:bookeat/src/features/login/domain/request/reset_password_request.dart';
import 'package:bookeat/src/features/login/domain/request/sign_in_request.dart';
import 'package:bookeat/src/features/login/domain/request/sign_up_request.dart';
import 'package:bookeat/src/features/login/domain/request/verify_otp_request.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class IAuthRepository {
  Future<Either<DomainException, SignInEntity>> signIn(
    SignInRequest body,
  );
  Future<Either<DomainException, SignUpEntity>> signUp(
    SignUpRequest body,
  );
  Future<Either<DomainException, RequestOtpCodeEntity>> requestOtpCode(
    RequestOtpCode body,
  );
  Future<Either<DomainException, VerifyOtpEntity>> verifyOtp(
    VerifyOtpRequest body,
  );
  Future<Either<DomainException, ForgotPasswordEntity>> forgotPassword(
    ForgotPasswordRequest body,
  );
  Future<Either<DomainException, ResetPasswordEntity>> resetPassword(
    ResetPasswordRequest body,
  );
  Future<Either<DomainException, LogoutEntity>> logout(
    LogoutRequest body,
  );
}
