import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
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
  Future<Either<DomainException, SignInEntity>> signIn(SignInRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.post(
      '${EndPoints.baseUrl}${EndPoints.signIn}',
      data: request.toJson(),
      options: Options(
        responseType: ResponseType.plain,
        headers: {
          'accept': 'application/json',
          'Content-Type': 'application/json',
          // 'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
        },
      ),
    );
    return response.fold(
      (error) {
        return Left(error);
      },
      (result) async {
        dynamic data = result.data;
        if (data == null) {
          return Left(UnknownException(message: 'Response data is null'));
        }
        if (data is String) {
          final trimmed = data.trim();
          if (trimmed.isEmpty) {
            return Left(UnknownException(message: 'Empty response from server'));
          }
          if (trimmed.startsWith('<')) {
            return Left(UnknownException(
              message: 'Server returned HTML response. This usually indicates серверную ошибку.',
            ));
          }
          try {
            data = jsonDecode(trimmed);
          } catch (e, stackTrace) {
            return Left(UnknownException(
              message: 'Failed to parse sign-in response: $e',
              stackTrace: stackTrace,
            ));
          }
        }
        if (data is Map && data.containsKey('data')) {
          return Right(SignInEntity.fromJson(data['data']));
        }
        if (data is Map<String, dynamic>) {
          return Right(SignInEntity.fromJson(data));
        }
        return Left(UnknownException(message: 'Unexpected sign-in response format: ${data.runtimeType}'));
      },
    );
  }

  @override
  Future<Either<DomainException, ForgotPasswordEntity>> forgotPassword(ForgotPasswordRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.post(
      '${EndPoints.baseUrl}${EndPoints.signIn}',
      data: request.toJson(),
      options: Options(
        responseType: ResponseType.plain,
        headers: {
          'accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    return response.fold(
      (error) {
        return Left(error);
      },
      (result) async {
        dynamic data = result.data;
        if (data is String) {
          if (data.trim().startsWith('<')) {
            return Left(UnknownException(
              message: 'Server returned HTML response. This usually indicates a server error or routing issue.',
            ));
          }

          try {
            data = jsonDecode(data);
          } catch (e) {
            return Left(UnknownException(
              message:
                  'Server returned non-JSON response: ${data.length > 100 ? "${data.substring(0, 100)}..." : data}',
            ));
          }
        }

        if (data == null) {
          return Left(UnknownException(message: 'Response data is null'));
        }

        if (data is Map && data.containsKey('requestError')) {
          final serviceException = data['requestError']?['serviceException'];
          final messageId = serviceException?['messageId'] as String?;
          final text = serviceException?['text'] as String?;

          final errorMessage = text ?? messageId ?? 'Unknown error occurred';

          if (messageId == 'THROTTLE_EXCEPTION') {
            return Left(ThrottleException(message: errorMessage));
          }

          return Left(UnknownException(message: errorMessage));
        }

        try {
          return Right(ForgotPasswordEntity.fromJson(data));
        } catch (e, stackTrace) {
          return Left(UnknownException(message: 'Failed to parse forgotPassword response: $e'));
        }
      },
    );
  }

  @override
  Future<Either<DomainException, ResetPasswordEntity>> resetPassword(ResetPasswordRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.post(
      '${EndPoints.baseUrl}${EndPoints.signIn}',
      data: request.toJson(),
      options: Options(
        headers: {
          'accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    return response.fold(
      (error) {
        return Left(error);
      },
      (result) async {
        final data = result.data;
        if (data == null) {
          return Left(UnknownException(message: 'Response data is null'));
        }
        return Right(ResetPasswordEntity.fromJson(data));
      },
    );
  }

  @override
  Future<Either<DomainException, SignUpEntity>> signUp(SignUpRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.post(
      '${EndPoints.baseUrl}${EndPoints.signUp}',
      data: request.toJson(),
      options: Options(
        responseType: ResponseType.plain,
        headers: {
          'accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    return response.fold(
      (error) {
        return Left(error);
      },
      (result) async {
        dynamic data = result.data;

        if (data == null) {
          return Left(UnknownException(message: 'Response data is null'));
        }

        if (data is String) {
          final trimmed = data.trim();
          if (trimmed.isEmpty) {
            return Left(UnknownException(message: 'Empty response from server'));
          }

          if (trimmed.startsWith('<')) {
            return Left(UnknownException(
              message: 'Server returned HTML response. This usually indicates a server error or maintenance window.',
            ));
          }

          try {
            data = jsonDecode(trimmed);
          } catch (e, stackTrace) {
            return Left(UnknownException(
              message: 'Failed to parse sign-up response: $e',
              stackTrace: stackTrace,
            ));
          }
        }

        if (data is Map && data.containsKey('data')) {
          return Right(SignUpEntity.fromJson(data['data']));
        } else if (data is Map<String, dynamic>) {
          return Right(SignUpEntity.fromJson(data));
        }

        return Left(UnknownException(message: 'Unexpected sign-up response format: ${data.runtimeType}'));
      },
    );
  }

  @override
  Future<Either<DomainException, VerifyOtpEntity>> verifyOtp(VerifyOtpRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.post(
      '${EndPoints.baseUrl}${EndPoints.signIn}',
      data: request.toJson(),
      options: Options(
        headers: {
          'accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
        },
      ),
    );
    return response.fold(
      (error) {
        return Left(error);
      },
      (result) async {
        final data = result.data;

        if (data == null) {
          return Left(UnknownException(message: 'Response data is null'));
        }

        if (data is Map && data.containsKey('data')) {
          return Right(VerifyOtpEntity.fromJson(data['data']));
        } else {
          return Right(VerifyOtpEntity.fromJson(data));
        }
      },
    );
  }

  @override
  Future<Either<DomainException, RequestOtpCodeEntity>> requestOtpCode(RequestOtpCode request) async {
    final Either<DomainException, Response<dynamic>> response = await client.get(
      '${EndPoints.baseUrl}${EndPoints.signIn}',
      queryParameters: {
        'phoneNumber': request.phoneNumber,
      },
      options: Options(
        headers: {
          'accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
        },
      ),
    );

    return response.fold(
      (error) {
        return Left(error);
      },
      (result) async {
        final data = result.data;

        if (data == null) {
          return Left(UnknownException(message: 'Response data is null'));
        }
        if (data is Map && data.containsKey('data')) {
          if (data['data'] == null) {
            return Left(UnknownException(message: 'Response data[\'data\'] is null'));
          }
          return Right(RequestOtpCodeEntity.fromJson(data['data']));
        } else {
          return Right(RequestOtpCodeEntity.fromJson(data));
        }
      },
    );
  }

  @override
  Future<Either<DomainException, LogoutEntity>> logout(LogoutRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.post(
      '${EndPoints.baseUrl}${EndPoints.logout}',
      data: request.toJson(),
      options: Options(
        headers: {
          'accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
        },
      ),
    );

    return response.fold(
      (error) => Left(error),
      (result) async {
        final data = result.data;

        if (data == null) {
          return Left(UnknownException(message: 'Response data is null'));
        }

        if (data is Map && data.containsKey('data')) {
          final message = data['data'];
          if (message is Map<String, dynamic>) {
            return Right(LogoutEntity.fromJson(message));
          }
        }

        if (data is Map<String, dynamic>) {
          return Right(LogoutEntity.fromJson(data));
        }

        return Right(LogoutEntity(message: data.toString()));
      },
    );
  }
}
