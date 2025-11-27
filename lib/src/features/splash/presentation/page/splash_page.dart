import 'dart:async';

import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';
import 'package:bookeat/src/core/services/storage/storage_service_impl.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _setupAnimations();
    _navigateToNextScreen();
  }

  void _setupAnimations() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    _animationController.forward();
  }

  Future<void> _navigateToNextScreen() async {
    final storageService = StorageServiceImpl();
    final token = storageService.getToken();

    // Wait for minimum splash duration (2 seconds)
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    // Navigate based on app state
    if (token != null && token.isNotEmpty) {
      // User is logged in, go to main
      context.go(RoutePaths.main);
    } else {
      context.go(RoutePaths.login);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Scaffold(
      backgroundColor: colors.white,
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: RepaintBoundary(
            child: Image.asset(
              'assets/splash/splash_light.png',
              fit: BoxFit.contain,
              width: 300,
              height: 300,
              filterQuality: FilterQuality.high,
              isAntiAlias: true,
            ),
          ),
        ),
      ),
    );
  }
}
