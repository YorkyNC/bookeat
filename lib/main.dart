import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:logger/logger.dart';

import 'src/app/application.dart';
import 'src/app/imports.dart';
import 'src/core/services/injectable/injectable_service.dart';
import 'src/core/services/storage/storage_service_impl.dart';

class CustomFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

final StorageServiceImpl storageService = StorageServiceImpl();
final log = Logger(
  filter: CustomFilter(),
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 120,
    printEmojis: true,
    levelColors: {
      Level.error: AnsiColor.none(),
      Level.warning: AnsiColor.none(),
      Level.info: AnsiColor.none(),
      Level.debug: AnsiColor.none(),
      Level.fatal: AnsiColor.none(),
    },
    levelEmojis: {
      Level.error: '🚨',
      Level.warning: '⚠️',
      Level.info: '💡',
      Level.fatal: '💀',
    },
    noBoxingByDefault: false,
    excludeBox: {
      Level.trace: true,
    },
  ),
);

void main([List<String>? args, AppFlavor flavor = AppFlavor.development]) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  );

  try {} catch (e) {
    debugPrint('Plugin registration error: $e');
  }

  await storageService.init();

  await _initializeApp();

  runApp(
    AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        child: const MainApp(
          flavor: AppFlavor.production,
        ),
      ),
    ),
  );
}

Future<void> _initializeApp() async {
  try {
    await configureDependencies();

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await _requestAppTrackingTransparency();
  } catch (_) {}
}

Future<void> _requestAppTrackingTransparency() async {
  if (!Platform.isIOS) return;
  try {
    final status = await AppTrackingTransparency.trackingAuthorizationStatus;

    if (status == TrackingStatus.notDetermined) {
      await Future.delayed(const Duration(milliseconds: 250));
      await AppTrackingTransparency.requestTrackingAuthorization();
    }
  } catch (_) {}
}
