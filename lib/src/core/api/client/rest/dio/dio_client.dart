import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:bookeat/src/features/login/domain/entities/refresh_entity.dart';
import 'package:bookeat/src/features/login/domain/request/refresh_request.dart';

import '../../../../../../main.dart';
import '../../../../exceptions/domain_exception.dart';
import '../../../../services/storage/storage_service_impl.dart';
import '../../../../utils/token_utils.dart';
import '../../endpoints.dart';
import 'curl_logger_interceptor.dart';
import 'dio_exceptions.dart';

part 'dio_config.dart';
part 'dio_interceptor.dart';

@Singleton()
class DioRestClient {
  late final Dio _dio;

  DioRestClient() {
    _dio = Dio();
  }

  final StorageServiceImpl st = StorageServiceImpl();

  // Dio Client configurations
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    log.i('🔧 DioRestClient: Initializing Dio client...');
    BaseOptions options = BaseOptions(
      baseUrl: EndPoints.baseUrl,
      connectTimeout: DioConfigurations.connectTimeout,
      receiveTimeout: DioConfigurations.receiveTimeout,
    );
    _dio.options = options;

    // Add curl logger interceptor first to log the raw request
    _dio.interceptors.add(CurlLoggerInterceptor());
    log.i('🔧 DioRestClient: Added CurlLoggerInterceptor');

    // Add custom DioInterceptor for authentication
    final interceptor = DioInterceptor(dio: _dio);
    _dio.interceptors.add(interceptor);
    log.i('🔧 DioRestClient: Added DioInterceptor (total interceptors: ${_dio.interceptors.length})');
  }

  Dio get dio => _dio;

  //Get:-----------------------------------------------------------------------
  Future<Either<DomainException, Response>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } on DioException catch (e, s) {
      log.d('❌ DioClient GET - DioException:');
      log.d('URL: $url');
      log.d('Type: ${e.type}');
      log.d('Message: ${e.message}');
      log.d('Response status: ${e.response?.statusCode}');
      log.d('Response data: ${e.response?.data}');
      log.d('Error: ${e.error}');

      if (e.response?.statusCode == 401) {
        // Extract the actual error message from the response
        String errorMessage = 'Invalid credentials';
        if (e.response?.data is Map<String, dynamic> && e.response!.data.containsKey('message')) {
          errorMessage = e.response!.data['message'].toString();
        }
        log.e('❌ 401 Unauthorized - Error message: $errorMessage');
        final currentToken = st.getToken();
        if (currentToken != null && currentToken.isNotEmpty) {
          final tokenPreview = currentToken.length > 20 ? currentToken.substring(0, 20) : currentToken;
          log.e('❌ Current token: $tokenPreview...');
        } else {
          log.e('❌ Current token: null or empty');
        }
        return Left(AuthenticationException(message: errorMessage));
      }

      if (e.response?.statusCode == 502) {
        log.e('❌ 502 Bad Gateway - Server error, returning ServerException');
        return Left(ServerException(stackTrace: s));
      }

      return Left(_handleDioException(e, s));
    } catch (e, s) {
      log.d('❌ DioClient GET - Generic exception: $e');
      return Left(_handleError(e, s));
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Either<DomainException, Response>> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } on DioException catch (e, s) {
      log.d('❌ DioClient POST - DioException:');
      log.d('URL: $url');
      log.d('Type: ${e.type}');
      log.d('Message: ${e.message}');
      log.d('Response status: ${e.response?.statusCode}');

      try {
        if (e.response != null) {
          log.d('Response data type: ${e.response!.data.runtimeType}');
          if (e.response!.data is String) {
            log.d(
                'Response data (String): ${(e.response!.data as String).substring(0, (e.response!.data as String).length > 200 ? 200 : (e.response!.data as String).length)}');
          } else {
            log.d('Response data: ${e.response!.data}');
          }
          log.d('Response headers: ${e.response!.headers}');
        }
      } catch (_) {}

      log.d('Error: ${e.error}');

      if (e.error is FormatException) {
        final formatError = e.error as FormatException;
        log.e('❌ FormatException: ${formatError.message}');
        log.e('❌ This usually means the server returned non-JSON content (HTML/text)');
        if (e.response?.data is String) {
          return Left(NetworkException(
            message: 'Server returned invalid response format. ${e.response!.data}',
            stackTrace: s,
          ));
        }
        return Left(NetworkException(
          message: 'Server returned invalid response format: ${formatError.message}',
          stackTrace: s,
        ));
      }

      if (e.response?.statusCode == 401) {
        String errorMessage = 'Invalid credentials';
        if (e.response?.data is Map<String, dynamic> && e.response!.data.containsKey('message')) {
          errorMessage = e.response!.data['message'].toString();
        } else if (e.response?.data is String) {
          errorMessage = e.response!.data;
        }
        return Left(AuthenticationException(message: errorMessage));
      }

      if (e.response?.statusCode == 404) {
        String errorMessage = 'Not found';
        if (e.response?.data is Map<String, dynamic> && e.response!.data.containsKey('message')) {
          errorMessage = e.response!.data['message'].toString();
        } else if (e.response?.data is String) {
          errorMessage = e.response!.data.toString();
        }
        log.e('❌ 404 Not Found - Error message: $errorMessage');
        return Left(NetworkException(message: errorMessage, stackTrace: s));
      }

      if (e.response?.statusCode == 403) {
        String errorMessage = 'Forbidden';
        if (e.response?.data is Map<String, dynamic> && e.response!.data.containsKey('message')) {
          errorMessage = e.response!.data['message'].toString();
        } else if (e.response?.data is String) {
          errorMessage = e.response!.data.toString();
        }
        log.e('❌ 403 Forbidden - Error message: $errorMessage');
        return Left(NetworkException(message: errorMessage, stackTrace: s));
      }

      if (e.response?.statusCode == 502) {
        log.e('❌ 502 Bad Gateway - Server error, returning ServerException');
        return Left(ServerException(stackTrace: s));
      }

      return Left(_handleDioException(e, s));
    } catch (e, s) {
      log.d('❌ DioClient POST - Generic exception: $e');
      if (e is FormatException) {
        log.e('❌ FormatException caught: ${e.message}');
        return Left(NetworkException(
          message: 'Failed to parse server response: ${e.message}',
          stackTrace: s,
        ));
      }
      return Left(_handleError(e, s));
    }
  }

  // Patch:----------------------------------------------------------------------
  Future<Either<DomainException, Response>> patch(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 401) {
        // Extract the actual error message from the response
        String errorMessage = 'Invalid credentials';
        if (e.response?.data is Map<String, dynamic> && e.response!.data.containsKey('message')) {
          errorMessage = e.response!.data['message'].toString();
        }
        return Left(AuthenticationException(message: errorMessage));
      }

      if (e.response?.statusCode == 502) {
        log.e('❌ 502 Bad Gateway - Server error, returning ServerException');
        return Left(ServerException(stackTrace: s));
      }

      return Left(_handleDioException(e, s));
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

// Put:-----------------------------------------------------------------------
  Future<Either<DomainException, Response>> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 401) {
        String errorMessage = 'Invalid credentials';
        if (e.response?.data is Map<String, dynamic> && e.response!.data.containsKey('message')) {
          errorMessage = e.response!.data['message'].toString();
        }
        return Left(AuthenticationException(message: errorMessage));
      }

      if (e.response?.statusCode == 502) {
        log.e('❌ 502 Bad Gateway - Server error, returning ServerException');
        return Left(ServerException(stackTrace: s));
      }

      return Left(_handleDioException(e, s));
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<Either<DomainException, Response>> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return Right(response);
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 401) {
        String errorMessage = 'Invalid credentials';
        if (e.response?.data is Map<String, dynamic> && e.response!.data.containsKey('message')) {
          errorMessage = e.response!.data['message'].toString();
        }
        return Left(AuthenticationException(message: errorMessage));
      }

      if (e.response?.statusCode == 502) {
        log.e('❌ 502 Bad Gateway - Server error, returning ServerException');
        return Left(ServerException(stackTrace: s));
      }

      return Left(_handleDioException(e, s));
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Upload:--------------------------------------------------------------------
  Future<Either<DomainException, Response>> upload(
    String url, {
    required String filePath,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: FormData.fromMap({
          'file': await MultipartFile.fromFile(filePath),
        }),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Upload multiple files:-----------------------------------------------------
  Future<Either<DomainException, Response>> uploadMultipleFiles(
    String url, {
    required List<String> filePaths,
    List<String>? filenames,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: FormData.fromMap({
          'files': filePaths
              .map(
                (file) => MultipartFile.fromFileSync(
                  file,
                  filename: filenames?[filePaths.indexOf(file)],
                ),
              )
              .toList(),
        }),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Download:------------------------------------------------------------------
  Future<Either<DomainException, Response>> download(
    String url,
    String savePath, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.download(
        url,
        savePath,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  DomainException _handleError(e, StackTrace s) {
    if (e is DioException) {
      return _handleDioException(e, s);
    }
    return UnknownException();
  }

  DomainException _handleDioException(
    DioException e,
    StackTrace s,
  ) {
    final errorMessage = DioExceptions.fromDioError(e).toString();
    return NetworkException(message: errorMessage, stackTrace: s);
  }
}
