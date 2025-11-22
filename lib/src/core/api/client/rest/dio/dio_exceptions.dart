import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = 'cancelRequest';
        break;
      case DioExceptionType.connectionTimeout:
        message = 'connectionTimeout';
        break;
      case DioExceptionType.receiveTimeout:
        message = 'receiveTimeout';
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = 'sendTimeout';
        break;
      case DioExceptionType.unknown:
        if (dioError.message == null) {
          message = 'unexpectedError';
          break;
        }

        if (dioError.message!.contains('SocketException')) {
          message = 'noInternetConnection';
          break;
        }

        message = 'unexpectedError';
        break;
      default:
        message = 'unexpectedError';
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return _extractMessage(error, fallback: 'badRequest');
      case 401:
        return _extractMessage(error, fallback: '401');
      case 403:
        return _extractMessage(error, fallback: 'forbidden');
      case 404:
        return _extractMessage(error, fallback: 'notFound');
      case 500:
        return _extractMessage(error, fallback: 'internalServerError');
      case 502:
        return _extractMessage(error, fallback: 'badGateway');
      default:
        return _extractMessage(error, fallback: 'unexpectedError');
    }
  }

  String _extractMessage(dynamic error, {String fallback = 'unexpectedError'}) {
    try {
      if (error == null) return fallback;
      if (error is String) return error.isNotEmpty ? error : fallback;
      if (error is Map) {
        final dynamic message = error['message'] ??
            error['detail'] ??
            error['error'] ??
            error['title'] ??
            error['requestError']?['serviceException']?['text'] ??
            error['requestError']?['serviceException']?['messageId'];
        if (message is String && message.isNotEmpty) return message;
        return error.toString();
      }
      if (error is List && error.isNotEmpty) {
        final first = error.first;
        if (first is String && first.isNotEmpty) return first;
        if (first is Map) {
          final dynamic message = first['message'] ??
              first['detail'] ??
              first['error'] ??
              first['title'] ??
              first['requestError']?['serviceException']?['text'] ??
              first['requestError']?['serviceException']?['messageId'];
          if (message is String && message.isNotEmpty) return message;
        }
        return error.toString();
      }
      final dynamic data = (error as dynamic)?.data;
      if (data != null) {
        return _extractMessage(data, fallback: fallback);
      }
      return error.toString();
    } catch (_) {
      return fallback;
    }
  }

  @override
  String toString() => message;
}
