part of 'router.dart';

final leftTabNavigatorKey = GlobalKey<NavigatorState>();
final leftTabTeacherNavigatorKey = GlobalKey<NavigatorState>();
final centerTabNavigatorKey = GlobalKey<NavigatorState>();
final rightTabNavigatorKey = GlobalKey<NavigatorState>();

final st = StorageServiceImpl();

int getCUrrentAcademicYear() {
  final today = DateTime.now();
  return today.month <= 6 ? today.year - 1 : today.year;
}

Page getPage({required Widget child, required GoRouterState state, bool fullscreenDialog = false}) {
  return MaterialPage(maintainState: true, key: state.pageKey, fullscreenDialog: fullscreenDialog, child: child);
}

// Initialize user role from token data.
// UserTokenEntity getCurrentRole() {
//   final token = st.getToken();
//   if (token == null || token.isEmpty) {
//     return UserTokenEntity.fromJson({});
//   }
//   return UserTokenEntity.fromJson(Jwt.parseJwt(token));
// }

// Create a role provider or notifier to manage role state
// class RoleProvider extends ChangeNotifier {
//   UserTokenEntity? _role;

//   RoleProvider() : _role = getCurrentRole();

//   UserTokenEntity? get role => _role;

//   void updateRole() {
//     _role = getCurrentRole();
//     notifyListeners();
//   }

//   void clearRole() {
//     _role = null;
//     notifyListeners();
//   }
// }

// final roleNotifier = RoleNotifier();
// String schoolId = roleNotifier.getCurrentSchoolId()!;
int currentYear = getCUrrentAcademicYear();

// final dataSource = TimetableLocalDataSource();
// final repository = TimetableRepositoryImpl(localDataSource: dataSource);
// final useCase = GetTimetableEntries(repository);
// final bloc = TimetableBloc(getTimetableEntriesUseCase: useCase);

//pages paths

final List<RouteBase> _routes = [
  GoRoute(
    path: RoutePaths.loading,
    pageBuilder: (context, state) => getPage(
      child: const SplashPage(),
      state: state,
    ),
  ),
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      return AppNavigationWrapper(
        currentIndex: navigationShell.currentIndex,
        onTap: navigationShell.goBranch,
        child: navigationShell,
      );
    },
    branches: [
      // Tab 0 - Home
      StatefulShellBranch(
        routes: [
          GoRoute(path: RoutePaths.initial, redirect: (context, state) => RoutePaths.main),
          GoRoute(
            path: RoutePaths.main,
            pageBuilder: (context, state) => getPage(child: HomePage(), state: state),
          ),
        ],
      ),
      // Tab 1 - Bookings
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.bookings,
            pageBuilder: (context, state) => getPage(child: BookingPage(), state: state),
          ),
        ],
      ),
      // Tab 2 - Favorites
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.favorites,
            pageBuilder: (context, state) => getPage(
              child: FavoritesPage(),
              state: state,
            ),
          ),
        ],
      ),

      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.profile,
            pageBuilder: (context, state) => getPage(child: ProfilePage(), state: state),
          ),
        ],
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.login,
    pageBuilder: (context, state) => getPage(child: LoginPage(), state: state),
  ),
  GoRoute(
    path: RoutePaths.register,
    pageBuilder: (context, state) => getPage(child: RegisterPage(), state: state),
  ),
  GoRoute(
    path: RoutePaths.forgotPassword,
    pageBuilder: (context, state) => getPage(child: ForgotPasswordPage(), state: state),
  ),
];
