import 'package:firebase_messaging/firebase_messaging.dart';
import '../../../../main.dart';

/// Top-level функция для обработки background сообщений
/// Должна быть top-level (не внутри класса) для Android
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log.d('Handling a background message: ${message.messageId}');
  log.d('Message data: ${message.data}');
  
  if (message.notification != null) {
    log.d('Background notification title: ${message.notification?.title}');
    log.d('Background notification body: ${message.notification?.body}');
  }
  
  // Здесь можно обработать background уведомление
  // Например, сохранить в локальную базу данных или обновить состояние
}

