// import 'package:photo_manager/photo_manager.dart';
import 'package:bookeat/src/features/auth/presentation/page/forgot_password_page.dart';
import 'package:bookeat/src/features/auth/presentation/page/login_page.dart';
import 'package:bookeat/src/features/auth/presentation/page/register_page.dart';
import 'package:bookeat/src/features/bookings/presentation/page/booking_page.dart';
import 'package:bookeat/src/features/favorites/presentation/page/favorites_page.dart';
import 'package:bookeat/src/features/home/presentation/page/article_detail_page.dart';
import 'package:bookeat/src/features/home/presentation/page/filter_page.dart';
import 'package:bookeat/src/features/home/presentation/page/home_page.dart';
import 'package:bookeat/src/features/home/presentation/page/promotion_detail_page.dart';
import 'package:bookeat/src/features/home/presentation/page/restourant_detail_page.dart';
import 'package:bookeat/src/features/home/presentation/page/search_page.dart';
import 'package:bookeat/src/features/profile/presentation/page/profile_page.dart';
import 'package:bookeat/src/features/splash/presentation/page/splash_page.dart';

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
    initialLocation: RoutePaths.main,
    debugLogDiagnostics: true,
    routes: _routes,
  );
}
