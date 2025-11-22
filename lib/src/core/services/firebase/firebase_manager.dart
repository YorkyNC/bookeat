// import 'dart:io';

// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:google_api_availability/google_api_availability.dart';
// import 'package:jwt_decode/jwt_decode.dart';

// import '../../../../firebase_options.dart';
// import '../../../../main.dart';
// import '../../api/client/endpoints.dart';
// import '../../api/client/rest/dio/dio_client.dart';
// import '../injectable/injectable_service.dart';
// import '../storage/storage_service_impl.dart';
// import 'firebase_background_handler.dart';

// class FirebaseManager {
//   static bool _isInitialized = false;
//   static final dio = DioRestClient();
//   static final StorageServiceImpl _storageService = StorageServiceImpl();

//   static Future<String?> _getCurrentFcmToken() async {
//     try {
//       if (Platform.isIOS) {
//         try {
//           final deviceInfo = DeviceInfoPlugin();
//           final iosInfo = await deviceInfo.iosInfo;
//           final isSimulator = !iosInfo.isPhysicalDevice;

//           if (isSimulator) {
//             debugPrint('⚠️ Running on iOS Simulator - FCM tokens are not available on simulators');
//             debugPrint('   Push notifications only work on physical iOS devices');
//             debugPrint('   The app will continue to work, but push notifications will not function');
//             return null;
//           }
//         } catch (e) {
//           debugPrint('⚠️ Could not determine if running on simulator: $e');
//         }
//       }

//       final token = await FirebaseMessaging.instance.getToken();
//       if (token != null) {
//         debugPrint('✅ FCM Token obtained successfully: $token');
//       }
//       return token;
//     } catch (e) {
//       debugPrint('❌ Error getting FCM token: $e');

//       final errorString = e.toString().toLowerCase();
//       if (errorString.contains('unknown')) {
//         if (Platform.isIOS) {
//           debugPrint('⚠️ FCM token error on iOS - this usually means:');
//           debugPrint('   1. Running on simulator (push notifications not supported)');
//           debugPrint('   2. APNs not configured in Firebase Console');
//           debugPrint('   3. Bundle ID mismatch between Xcode and GoogleService-Info.plist');
//           debugPrint('   4. App needs to be rebuilt after AppDelegate changes');
//         } else {
//           debugPrint('⚠️ Possible issue: Check Firebase configuration and Google Services JSON');
//         }
//       } else if (errorString.contains('configuration')) {
//         debugPrint('⚠️ Possible issue: Bundle ID mismatch between Xcode project and GoogleService-Info.plist');
//         debugPrint('   Check that Bundle ID in Xcode matches BUNDLE_ID in GoogleService-Info.plist');
//       }
//       return null;
//     }
//   }

//   static Future<bool> _isFcmTokenChanged(String? currentToken) async {
//     if (currentToken == null) return false;
//     final lastSentToken = _storageService.getLastSentFcmToken();
//     return currentToken != lastSentToken;
//   }

//   static String? _extractUserIdFromToken(String? token) {
//     if (token == null) return null;
//     try {
//       final tokenData = Jwt.parseJwt(token);
//       return tokenData['sub'];
//     } catch (e) {
//       debugPrint('Error extracting user ID from token: $e');
//       return null;
//     }
//   }

//   static Future<void> initialize() async {
//     if (_isInitialized) return;

//     try {
//       await _initializeFirebase();

//       FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

//       await _initializePushNotifications();

//       if (Platform.isAndroid) {
//         try {
//           await GoogleApiAvailability.instance.makeGooglePlayServicesAvailable();
//         } catch (e) {
//           debugPrint('Error checking Google Play Services: $e');
//         }
//       }

//       _setupTokenRefreshListener();
//       _setupMessageListener();

//       _isInitialized = true;
//     } catch (e) {
//       debugPrint('Error initializing Firebase Manager: $e');
//       _isInitialized = false;
//     }
//   }

//   static Future<void> _initializePushNotifications() async {
//     try {
//       await FirebaseMessaging.instance.setAutoInitEnabled(true);

//       if (Platform.isIOS) {
//         final settings = await FirebaseMessaging.instance.requestPermission(
//           alert: true,
//           badge: true,
//           sound: true,
//         );
//         debugPrint('iOS permission status: ${settings.authorizationStatus}');
//       }

//       if (Platform.isAndroid) {
//         await FirebaseMessaging.instance.requestPermission();
//       }

//       await handleToken();
//     } catch (e) {
//       debugPrint('Push notification initialization error: $e');
//       rethrow;
//     }
//   }

//   static Future<void> handleToken() async {
//     final currentFcmToken = await _getCurrentFcmToken();
//     if (currentFcmToken == null) {
//       debugPrint('No FCM token available');
//       return;
//     }

//     final tokenChanged = await _isFcmTokenChanged(currentFcmToken);
//     debugPrint('Token changed: $tokenChanged');

//     final clientId = _storageService.getClientId();
//     try {
//       bool success = false;

//       if (clientId.isNotEmpty) {
//         success = await _patchDevice(currentFcmToken, clientId, tokenChanged);
//       }

//       if (!success) {
//         await _registerNewDevice(currentFcmToken);
//       }
//     } catch (e) {
//       debugPrint('Error handling token: $e');
//     }
//   }

//   static Future<bool> _patchDevice(String currentToken, String clientId, bool includeToken) async {
//     try {
//       final userToken = _storageService.getToken();
//       final userId = _extractUserIdFromToken(userToken);
//       final deviceInfo = await _getDeviceInfo();

//       final Map<String, dynamic> data = {
//         'userId': userId,
//         'deviceInfo': {
//           'additionalProp1': deviceInfo.platform,
//           'additionalProp2': deviceInfo.model,
//           'additionalProp3': deviceInfo.deviceId,
//         },
//       };

//       if (includeToken) {
//         data['token'] = currentToken;
//       }

//       final response = await dio.patch(
//         '${EndPoints.baseUrl}/v1/user-device/$clientId',
//         data: data,
//       );

//       return response.fold(
//         (error) {
//           return false;
//         },
//         (result) async {
//           if (result.statusCode == 200 || result.statusCode == 201) {
//             return true;
//           } else {
//             log.d(result.statusMessage!);
//             return false;
//           }
//         },
//       );
//     } catch (e) {
//       debugPrint('Error updating device: $e');
//       return false;
//     }
//   }

//   static void _setupTokenRefreshListener() {
//     FirebaseMessaging.instance.onTokenRefresh.listen(
//       (fcmToken) async {
//         debugPrint('FCM Token refreshed, handling token update');
//         await handleToken();
//       },
//       onError: (err) {
//         debugPrint('Error on token refresh: $err');
//       },
//     );
//   }

//   static Future<void> _registerNewDevice(String token) async {
//     try {
//       final dio = getIt<DioRestClient>().dio;
//       final userToken = _storageService.getToken();
//       final userId = _extractUserIdFromToken(userToken);
//       final deviceInfo = await _getDeviceInfo();
//       final deviceData = {
//         'additionalProp1': deviceInfo.platform,
//         'additionalProp2': deviceInfo.model,
//         'additionalProp3': deviceInfo.deviceId,
//       };

//       final response = await dio.post(
//         '/v1/user-device',
//         data: {
//           'userId': userId,
//           'token': token,
//           'deviceInfo': deviceData,
//         },
//       );

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final newClientId = response.data['clientId'];
//         if (newClientId != null) {
//           await _storageService.setClientId(newClientId);
//           await _storageService.setLastSentFcmToken(token);
//         }
//       }
//     } catch (e) {
//       debugPrint('Error registering device: $e');
//     }
//   }

//   static Future<void> deactivateDeviceToken() async {
//     try {
//       final clientId = _storageService.getClientId();
//       if (clientId.isEmpty) return;

//       final deviceInfo = await _getDeviceInfo();
//       final deviceData = {
//         'additionalProp1': deviceInfo.platform,
//         'additionalProp2': deviceInfo.model,
//         'additionalProp3': deviceInfo.deviceId,
//       };

//       final dio = getIt<DioRestClient>().dio;
//       final response = await dio.patch(
//         '/v1/user-device/$clientId',
//         data: {
//           'userId': null,
//           'deviceInfo': deviceData,
//         },
//       );

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         await _storageService.setLastSentFcmToken(null);
//       }
//     } catch (e) {
//       debugPrint('Error in deactivateDeviceToken: $e');
//     }
//   }

//   static Future<void> _initializeFirebase() async {
//     try {
//       try {
//         Firebase.app();
//         debugPrint('Firebase already initialized, skipping...');
//         return;
//       } catch (_) {}

//       await Firebase.initializeApp(
//         options: DefaultFirebaseOptions.currentPlatform,
//       );
//       debugPrint('Firebase initialized successfully');
//     } catch (e) {
//       final errorString = e.toString();
//       if (errorString.contains('duplicate-app') ||
//           errorString.contains('[DEFAULT]') ||
//           errorString.contains('already exists')) {
//         debugPrint('Firebase app already exists, continuing...');
//         return;
//       }
//       debugPrint('Firebase initialization error: $e');
//       rethrow;
//     }
//   }

//   static void _setupMessageListener() {
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       debugPrint('Got a message whilst in the foreground!');
//       debugPrint('Message data: ${message.data}');

//       if (message.notification != null) {
//         debugPrint('Message notification: ${message.notification}');
//         debugPrint('Title: ${message.notification?.title}');
//         debugPrint('Body: ${message.notification?.body}');

//         _handleForegroundNotification(message);
//       }
//     });

//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       debugPrint('Notification opened app from background');
//       debugPrint('Message data: ${message.data}');
//       _handleNotificationTap(message);
//     });

//     FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
//       if (message != null) {
//         debugPrint('App opened from terminated state via notification');
//         debugPrint('Message data: ${message.data}');
//         _handleNotificationTap(message);
//       }
//     });
//   }

//   static void _handleForegroundNotification(RemoteMessage message) {
//     debugPrint('Handling foreground notification');
//   }

//   static void _handleNotificationTap(RemoteMessage message) {
//     debugPrint('Handling notification tap');
//     final data = message.data;

//     if (data.containsKey('type')) {
//       final type = data['type'];
//       debugPrint('Notification type: $type');
//     }
//   }

//   static Future<DeviceInfo> _getDeviceInfo() async {
//     final deviceInfo = DeviceInfoPlugin();
//     final String platform = Platform.isIOS ? 'iOS' : 'Android';

//     String model;
//     String deviceId;

//     if (Platform.isIOS) {
//       final iosInfo = await deviceInfo.iosInfo;
//       model = iosInfo.model;
//       deviceId = iosInfo.identifierForVendor ?? 'unknown';
//     } else {
//       final androidInfo = await deviceInfo.androidInfo;
//       model = androidInfo.model;
//       deviceId = androidInfo.id;
//     }

//     return DeviceInfo(
//       platform: platform,
//       model: model,
//       deviceId: deviceId,
//     );
//   }
// }

// class DeviceInfo {
//   final String platform;
//   final String model;
//   final String deviceId;

//   DeviceInfo({
//     required this.platform,
//     required this.model,
//     required this.deviceId,
//   });
// }
