import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../main.dart';
import 'storage_service.dart';

@singleton
class StorageServiceImpl extends ChangeNotifier implements StorageService {
  static final StorageServiceImpl _instance = StorageServiceImpl._internal();

  factory StorageServiceImpl() {
    return _instance;
  }

  StorageServiceImpl._internal();

  // Auth-related keys
  static const String _tokenKey = 'TOKEN';
  static const String _refreshTokenKey = 'REFRESH_TOKEN';
  static const String _roleKey = 'ROLE';
  static const String _classKey = 'CLASS_ID';
  static const String _languageCode = 'LANGUAGE_CODE';
  static const String _authStatusKey = 'AUTH_STATUS';
  static const String _pvzIdKey = 'PVZ_ID';
  static const String _userIdKey = 'USER_ID';

  // Device-related keys
  static const String _clientIdKey = 'CLIENT_ID';
  static const String _lastSentFcmTokenKey = 'LAST_SENT_FCM_TOKEN';
  static const String _lastKnownBaseUrlKey = 'LAST_KNOWN_BASE_URL';
  static const String _hasSeenIntroductionKey = 'HAS_SEEN_INTRODUCTION';
  static const String _pvzSearchHistoryKey = 'PVZ_SEARCH_HISTORY';
  static const int _maxHistoryItems = 10;

  late Box authBox;
  late Box deviceBox;

  String? _cachedLastSentFcmToken;

  // Device-related methods

  Future<void> setLastSentFcmToken(String? token) async {
    try {
      _cachedLastSentFcmToken = token;
      await deviceBox.put(_lastSentFcmTokenKey, token);
      debugPrint('Last sent FCM token saved successfully: $token');
    } catch (e) {
      debugPrint('Error saving last sent FCM token: $e');
      rethrow;
    }
  }

  String? getLastSentFcmToken() {
    try {
      if (_cachedLastSentFcmToken != null) return _cachedLastSentFcmToken;
      _cachedLastSentFcmToken = deviceBox.get(_lastSentFcmTokenKey);
      debugPrint('Retrieved last sent FCM token: $_cachedLastSentFcmToken');
      return _cachedLastSentFcmToken;
    } catch (e) {
      debugPrint('Error getting last sent FCM token: $e');
      return null;
    }
  }

  @override
  Future<void> setClientId(String clientId) async {
    try {
      await deviceBox.put(_clientIdKey, clientId);
      debugPrint('Client ID saved successfully: $clientId');
    } catch (e) {
      debugPrint('Error saving client ID: $e');
      rethrow;
    }
  }

  @override
  String getClientId() {
    try {
      final clientId = deviceBox.get(_clientIdKey);
      debugPrint('Retrieved client ID: $clientId');
      return clientId ?? '';
    } catch (e) {
      debugPrint('Error getting client ID: $e');
      return '';
    }
  }

  // Auth-related methods
  @override
  Future<void> setToken(String? token) async {
    log.d('StorageService: Setting token: $token');
    await authBox.put(_tokenKey, token);
    try {
      if (token != null && token.isNotEmpty) {
        await extractAndSavePvzIdFromToken(token);
        await extractAndSaveUserIdFromToken(token);
      } else {
        await deletePvzId();
        await deleteUserId();
      }
    } catch (_) {}
    notifyListeners();
  }

  @override
  Future<void> setRole(String? role) async {
    log.d('Role saved: $role');
    await authBox.put(_roleKey, role);
    notifyListeners();
  }

  @override
  String? getClassId() {
    return authBox.get(_classKey);
  }

  void notify() {
    notifyListeners();
  }

  @override
  Future<void> setClassId(String? classId) async {
    log.d('$classId CLASS');
    await authBox.put(_classKey, classId);
    notifyListeners();
  }

  @override
  Future<void> setRefreshToken(String? refreshToken) async {
    final currentRefreshToken = getRefreshToken();

    if (currentRefreshToken == null) {
      log.d('💾 [Storage] Saving NEW refresh token to storage');
    } else {
      log.d('💾 [Storage] UPDATING refresh token in storage');
      log.d('💾 [Storage] Old: ${currentRefreshToken.substring(0, 20)}...');
    }

    log.d('💾 [Storage] New: ${refreshToken?.substring(0, 20)}...');
    await authBox.put(_refreshTokenKey, refreshToken);

    log.d('✅ [Storage] Refresh token saved to storage successfully');
    notifyListeners();
  }

  Future<void> setLanguageCode(String languageCode) async {
    await authBox.put(_languageCode, languageCode);
  }

  @override
  String? getToken() {
    try {
      final token = authBox.get(_tokenKey);
      log.d('StorageService: Retrieved token: ${token?.substring(0, token.length > 20 ? 20 : token.length)}...');
      return token;
    } catch (e) {
      log.w('StorageService: Error retrieving token, authBox not initialized: $e');
      return null;
    }
  }

  @override
  String? getRole() {
    return authBox.get(_roleKey);
  }

  // PVZ ID methods
  @override
  Future<void> setPvzId(String? pvzId) async {
    log.d('PVZ ID saved: $pvzId');
    await authBox.put(_pvzIdKey, pvzId);
    notifyListeners();
  }

  @override
  String? getPvzId() {
    final pvzId = authBox.get(_pvzIdKey);
    log.d('StorageService: Retrieved PVZ ID: $pvzId');
    return pvzId;
  }

  @override
  Future<void> deletePvzId() async {
    log.d('StorageService: Deleting PVZ ID from storage');
    await authBox.delete(_pvzIdKey);
    log.d('StorageService: PVZ ID deleted');
    notifyListeners();
  }

  @override
  Future<void> setUserId(String? userId) async {
    log.d('User ID saved: $userId');
    await authBox.put(_userIdKey, userId);
    notifyListeners();
  }

  @override
  String? getUserId() {
    final userId = authBox.get(_userIdKey);
    log.d('StorageService: Retrieved User ID: $userId');
    return userId;
  }

  @override
  Future<void> deleteUserId() async {
    log.d('StorageService: Deleting User ID from storage');
    await authBox.delete(_userIdKey);
    log.d('StorageService: User ID deleted');
    notifyListeners();
  }

  Future<void> extractAndSavePvzIdFromToken(String token) async {
    try {
      final parts = token.split('.');
      if (parts.length == 3) {
        final payload = parts[1];
        final padded = payload.padRight(payload.length + (4 - payload.length % 4) % 4, '=');
        final decoded = utf8.decode(base64Url.decode(padded));
        final payloadJson = jsonDecode(decoded);
        final pvzIdValue = payloadJson['pvzId'] ?? payloadJson['pvz_id'] ?? payloadJson['pvz'];
        final currentStoredPvzId = authBox.get(_pvzIdKey);

        if (pvzIdValue != null) {
          final pvzId = pvzIdValue.toString();
          log.d('🔍 Extracted PVZ ID from token: $pvzId (type: ${pvzIdValue.runtimeType})');
          log.d('🔍 Current stored PVZ ID before update: $currentStoredPvzId');
          await setPvzId(pvzId);
        } else {
          log.d('🔍 No PVZ ID found in token, current stored: $currentStoredPvzId');
        }
      }
    } catch (e) {
      log.d('🔍 Error extracting PVZ ID from token: $e');
    }
  }

  Future<void> extractAndSaveUserIdFromToken(String token) async {
    try {
      final parts = token.split('.');
      if (parts.length == 3) {
        final payload = parts[1];
        final padded = payload.padRight(payload.length + (4 - payload.length % 4) % 4, '=');
        final decoded = utf8.decode(base64Url.decode(padded));
        final payloadJson = jsonDecode(decoded);

        final userIdValue = payloadJson['userId'] ?? payloadJson['user_id'] ?? payloadJson['sub'] ?? payloadJson['id'];

        final currentStoredUserId = authBox.get(_userIdKey);

        if (userIdValue != null) {
          final userId = userIdValue.toString();
          log.d('🔍 Extracted User ID from token: $userId (type: ${userIdValue.runtimeType})');
          log.d('🔍 Current stored User ID before update: $currentStoredUserId');
          await setUserId(userId);
        } else {
          log.d('🔍 No User ID found in token, current stored: $currentStoredUserId');
          log.d('🔍 Available token fields: ${payloadJson.keys.toList()}');
        }
      }
    } catch (e) {
      log.d('🔍 Error extracting User ID from token: $e');
    }
  }

  @override
  Future<void> deleteRole() async {
    log.d('StorageService: Deleting role from storage');
    await authBox.delete(_roleKey);
    log.d('StorageService: Role deleted, notifying listeners');
    notifyListeners();
  }

  @override
  String? getRefreshToken() {
    return authBox.get(_refreshTokenKey);
  }

  @override
  Future<void> deleteToken() async {
    log.d('StorageService: Deleting token from storage');
    await authBox.delete(_tokenKey);
    log.d('StorageService: Token deleted, notifying listeners');
    await deletePvzId();
    await deleteUserId();
    notifyListeners();
  }

  @override
  Future<void> deleteRefreshToken() async {
    await authBox.delete(_refreshTokenKey);
    notifyListeners();
  }

  Future<String?> getLanguageCode() async {
    return await authBox.get(_languageCode);
  }

  // AuthStatus methods
  Future<void> setAuthStatus(String? authStatus) async {
    log.d('Auth status saved: $authStatus');
    await authBox.put(_authStatusKey, authStatus);
    notifyListeners();
  }

  String? getAuthStatus() {
    try {
      final authStatus = authBox.get(_authStatusKey);
      log.d('Retrieved auth status: $authStatus');
      return authStatus;
    } catch (e) {
      log.w('Error retrieving auth status: $e');
      return null;
    }
  }

  Future<void> deleteAuthStatus() async {
    log.d('Deleting auth status from storage');
    await authBox.delete(_authStatusKey);
    notifyListeners();
  }

  // Clear methods
  Future<void> clearAuth() async {
    if (authBox.isOpen) {
      await authBox.clear();
      notifyListeners();
    }
  }

  // Clear only device data
  Future<void> clearDeviceData() async {
    if (deviceBox.isOpen) {
      _cachedLastSentFcmToken = null;
      await deviceBox.clear();
    }
  }

  // Interface compatibility method - only clears auth data
  @override
  Future<void> clear() async {
    if (authBox.isOpen) {
      await authBox.clear();
      notifyListeners();
    }
  }

  // Clear all data
  Future<void> clearAll() async {
    await clearAuth();
    await clearDeviceData();
  }

  // Initialization methods
  @override
  Future<void> init() async {
    await Hive.initFlutter();
    authBox = await Hive.openBox('auth');
    deviceBox = await Hive.openBox('device');
    _initializeCachedValues();
  }

  @override
  Future<void> openBox() async {
    authBox = await Hive.openBox('auth');
    deviceBox = await Hive.openBox('device');
    _initializeCachedValues();
  }

  void _initializeCachedValues() {
    _cachedLastSentFcmToken = deviceBox.get(_lastSentFcmTokenKey);
  }

  @override
  bool checkLoggedIn() {
    return getToken() != null;
  }

  @override
  bool get isLoggedIn => checkLoggedIn();

  // BaseUrl monitoring methods
  @override
  Future<void> setLastKnownBaseUrl(String baseUrl) async {
    try {
      await deviceBox.put(_lastKnownBaseUrlKey, baseUrl);
      debugPrint('Last known baseUrl saved: $baseUrl');
    } catch (e) {
      debugPrint('Error saving last known baseUrl: $e');
      rethrow;
    }
  }

  @override
  String? getLastKnownBaseUrl() {
    try {
      final baseUrl = deviceBox.get(_lastKnownBaseUrlKey);

      return baseUrl;
    } catch (e) {
      return null;
    }
  }

  // Introduction tracking methods
  @override
  Future<void> setHasSeenIntroduction(bool hasSeen) async {
    try {
      await deviceBox.put(_hasSeenIntroductionKey, hasSeen);
      debugPrint('Introduction seen status saved: $hasSeen');
    } catch (e) {
      debugPrint('Error saving introduction seen status: $e');
      rethrow;
    }
  }

  @override
  bool hasSeenIntroduction() {
    try {
      final hasSeen = deviceBox.get(_hasSeenIntroductionKey, defaultValue: false);
      debugPrint('Retrieved introduction seen status: $hasSeen');
      return hasSeen;
    } catch (e) {
      debugPrint('Error getting introduction seen status: $e');
      return false;
    }
  }

  // Method to reset introduction status (useful for testing)
  @override
  Future<void> resetIntroductionStatus() async {
    try {
      await deviceBox.delete(_hasSeenIntroductionKey);
      debugPrint('Introduction status reset');
    } catch (e) {
      debugPrint('Error resetting introduction status: $e');
      rethrow;
    }
  }

  // PVZ Search History methods
  @override
  Future<void> addPvzToSearchHistory(Map<String, dynamic> pvzData) async {
    try {
      final history = getPvzSearchHistory();

      // Remove existing entry with same ID if exists
      history.removeWhere((item) => item['id'] == pvzData['id']);

      // Add timestamp
      pvzData['viewedAt'] = DateTime.now().toIso8601String();

      // Add to beginning of list
      history.insert(0, pvzData);

      // Keep only last N items
      if (history.length > _maxHistoryItems) {
        history.removeRange(_maxHistoryItems, history.length);
      }

      await deviceBox.put(_pvzSearchHistoryKey, jsonEncode(history));
      log.d('PVZ added to search history: ${pvzData['id']}');
    } catch (e) {
      log.e('Error adding PVZ to search history: $e');
      rethrow;
    }
  }

  @override
  List<Map<String, dynamic>> getPvzSearchHistory() {
    try {
      final historyJson = deviceBox.get(_pvzSearchHistoryKey);
      if (historyJson == null) {
        return [];
      }
      final List<dynamic> historyList = jsonDecode(historyJson);
      return historyList.map((item) => item as Map<String, dynamic>).toList();
    } catch (e) {
      log.e('Error getting PVZ search history: $e');
      return [];
    }
  }

  @override
  Future<void> clearPvzSearchHistory() async {
    try {
      await deviceBox.delete(_pvzSearchHistoryKey);
      log.d('PVZ search history cleared');
    } catch (e) {
      log.e('Error clearing PVZ search history: $e');
      rethrow;
    }
  }

  @override
  Future<void> removePvzFromSearchHistory(int pvzId) async {
    try {
      final history = getPvzSearchHistory();
      history.removeWhere((item) => item['id'] == pvzId);
      await deviceBox.put(_pvzSearchHistoryKey, jsonEncode(history));
      log.d('PVZ removed from search history: $pvzId');
    } catch (e) {
      log.e('Error removing PVZ from search history: $e');
      rethrow;
    }
  }
}
