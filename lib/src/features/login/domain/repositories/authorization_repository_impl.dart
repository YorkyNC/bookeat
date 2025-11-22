import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:bookeat/src/features/login/data/datasources/remote/authorization_remote_impl.dart';
import 'package:bookeat/src/features/login/data/datasources/remote/i_authorization_remote.dart';
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

import '../../../../../main.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';

@named
@LazySingleton(as: IAuthRepository)
class AuthorizationRepositoryImpl implements IAuthRepository {
  final IAuthorizationRemote _authorizationRemote;

  AuthorizationRepositoryImpl(@Named.from(AuthorizationRemoteImpl) this._authorizationRemote);

  @override
  Future<Either<DomainException, SignInEntity>> signIn(SignInRequest body) async {
    try {
      final requests = await _authorizationRemote.signIn(body);
      return requests.fold(
        (error) {
          return Left(error);
        },
        (response) => Right(response),
      );
    } catch (e) {
      log.e(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, SignUpEntity>> signUp(SignUpRequest body) async {
    try {
      final requests = await _authorizationRemote.signUp(body);
      return requests.fold(
        (error) {
          return Left(error);
        },
        (response) => Right(response),
      );
    } catch (e) {
      log.e(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, RequestOtpCodeEntity>> requestOtpCode(RequestOtpCode body) async {
    try {
      final requests = await _authorizationRemote.requestOtpCode(body);
      return requests.fold(
        (error) {
          return Left(error);
        },
        (response) => Right(response),
      );
    } catch (e) {
      log.e(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, VerifyOtpEntity>> verifyOtp(VerifyOtpRequest body) async {
    try {
      final requests = await _authorizationRemote.verifyOtp(body);
      return requests.fold(
        (error) {
          return Left(error);
        },
        (response) => Right(response),
      );
    } catch (e) {
      log.e(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ForgotPasswordEntity>> forgotPassword(ForgotPasswordRequest body) async {
    try {
      final requests = await _authorizationRemote.forgotPassword(body);
      return requests.fold(
        (error) {
          return Left(error);
        },
        (response) => Right(response),
      );
    } catch (e) {
      log.e(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, ResetPasswordEntity>> resetPassword(ResetPasswordRequest body) async {
    try {
      final requests = await _authorizationRemote.resetPassword(body);
      return requests.fold(
        (error) {
          return Left(error);
        },
        (response) => Right(response),
      );
    } catch (e) {
      log.e(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, LogoutEntity>> logout(LogoutRequest body) async {
    try {
      final requests = await _authorizationRemote.logout(body);
      return requests.fold(
        (error) => Left(error),
        (response) => Right(response),
      );
    } catch (e) {
      log.e(e.toString());
      return Left(UnknownException(message: e.toString()));
    }
  }
}
