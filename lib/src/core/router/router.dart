// import 'package:photo_manager/photo_manager.dart';
import 'package:bookeat/src/features/auth/presentation/page/forgot_password_page.dart';
import 'package:bookeat/src/features/auth/presentation/page/login_page.dart';
import 'package:bookeat/src/features/auth/presentation/page/register_page.dart';

import '../../app/app_navigation_wrapper.dart';
import '../../app/imports.dart';
import '../services/storage/storage_service_impl.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

GoRouter routerProvider() {
  final StorageServiceImpl st = StorageServiceImpl();
  final String? token = st.getToken();
  final bool hasSeenIntroduction = st.hasSeenIntroduction();

  return GoRouter(
    refreshListenable: st,
    initialLocation: RoutePaths.login,
    // initialLocation: RoutePaths.registerPVZ,
    // initialLocation: RoutePaths.agree\ment,
    // initialLocation: RoutePaths.registerPVZ,
    // initialLocation: RoutePaths.loading,
    // initialLocation: RoutePaths.introduction,
    // initialLocation: RoutePaths.main,
    // initialLocation: RoutePaths.home,
    // initialLocation: RoutePaths.otp,
    // initialLocation: RoutePaths.login,
    debugLogDiagnostics: true,
    routes: _routes,
  );
}
