part of 'dio_client.dart';

class DioInterceptor extends Interceptor {
  DioInterceptor({Dio? dio}) : dio = dio ?? Dio();

  final StorageServiceImpl st = StorageServiceImpl();
  final Dio dio;

  bool _isRefreshing = false;
  Completer<String>? _refreshCompleter;
  final _queue = <QueueItem>[];
  static void clearCache() {}

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String? accessToken = st.getToken();

    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    try {
      if (err.response != null) {}
    } catch (_) {}

    final originalToken = err.requestOptions.headers['Authorization']?.toString().replaceFirst('Bearer ', '');
    if (originalToken != null && originalToken.isNotEmpty) {
      try {
        final wasExpired = TokenUtils.isTokenExpired(originalToken);
        if (wasExpired) {}
      } catch (_) {}
    }

    if (err.requestOptions.path.contains('refresh') || err.requestOptions.uri.path.contains('refresh')) {
      return handler.next(err);
    }

    if (err.response?.statusCode != 401) {
      return handler.next(err);
    }

    final requestOptions = err.requestOptions;

    try {
      final token = await _refreshTokenAndGetNew(requestOptions);
      if (token == null) {
        await _handleRefreshFailure(handler, err);
        return;
      }

      final response = await _retryRequest(requestOptions, token);
      return handler.resolve(response);
    } catch (e) {
      await _handleRefreshFailure(handler, err);
    }
  }

  Future<String?> _refreshTokenAndGetNew(RequestOptions requestOptions) async {
    if (!_isRefreshing) {
      _isRefreshing = true;
      _refreshCompleter = Completer<String>();

      try {
        final refreshed = await _refreshToken();
        if (refreshed) {
          final newToken = st.getToken();
          if (newToken == null || newToken.isEmpty) {
            _refreshCompleter?.completeError('Token refresh succeeded but new token is null');
            _clearQueue();
            _isRefreshing = false;
            return null;
          }
          _refreshCompleter?.complete(newToken);

          await _processQueue();

          _isRefreshing = false;
          return newToken;
        } else {
          _refreshCompleter?.completeError('Refresh failed');
          _clearQueue();
          _isRefreshing = false;
          return null;
        }
      } catch (e) {
        _refreshCompleter?.completeError(e);
        _clearQueue();
        _isRefreshing = false;
        rethrow;
      }
    } else {
      return await _refreshCompleter?.future;
    }
  }

  Future<bool> _refreshToken() async {
    final String? refreshToken = st.getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      return false;
    }

    try {
      final refreshDio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 60),
          receiveTimeout: const Duration(seconds: 60),
        ),
      );

      final refreshUrl = '${EndPoints.baseUrl}${EndPoints.refreshToken}';

      final refreshRequest = RefreshRequest(refreshToken: refreshToken);
      final requestData = refreshRequest.toJson();

      final response = await refreshDio.post(
        refreshUrl,
        data: requestData,
        options: Options(
          method: 'POST',
          headers: const {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        try {
          final data = RefreshEntity.fromJson(response.data);
          if (data.accessToken.isNotEmpty && data.refreshToken.isNotEmpty) {
            await st.setToken(data.accessToken);
            await st.setRefreshToken(data.refreshToken);

            return true;
          }
        } catch (_) {}
      }

      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> _processQueue() async {
    final token = st.getToken();
    if (token == null) {
      _clearQueue();
      return;
    }

    final requests = List<QueueItem>.from(_queue);
    _queue.clear();

    for (final item in requests) {
      try {
        final response = await _retryRequest(item.options, token);
        item.completer.complete(response);
      } catch (e) {
        item.completer.completeError(e);
      }
    }
  }

  void _clearQueue() {
    for (final item in _queue) {
      item.completer.completeError('Authentication failed');
    }
    _queue.clear();
  }

  Future<Response<dynamic>> _retryRequest(RequestOptions requestOptions, String token) async {
    final options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer $token',
        'accept': 'application/json',
      },
      validateStatus: (status) => status != null && status < 500,
    );

    final retryDio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    final fullUri = requestOptions.uri;

    try {
      final response = await retryDio.request<dynamic>(
        fullUri.toString(),
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _handleRefreshFailure(ErrorInterceptorHandler handler, DioException originalError) async {
    await logoutUser();
    _clearQueue();

    handler.reject(
      DioException(
        requestOptions: originalError.requestOptions,
        error: 'Authentication failed. Please log in again.',
        type: DioExceptionType.unknown,
        response: originalError.response,
      ),
    );
  }

  Future<void> logoutUser() async {
    await st.deleteToken();

    await st.deleteRefreshToken();

    await st.deletePvzId();

    await st.clear();

    await st.clearAll();

    st.notify();
  }
}

class QueueItem {
  final RequestOptions options;
  final Completer<Response> completer;

  QueueItem(this.options, this.completer);
}
