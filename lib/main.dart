import 'dart:io';

import 'src/app/application.dart';
import 'src/app/imports.dart';
import 'src/core/services/injectable/injectable_service.dart';
import 'src/core/services/storage/storage_service_impl.dart';

final StorageServiceImpl storageService = StorageServiceImpl();

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
  try {} catch (_) {}
}
