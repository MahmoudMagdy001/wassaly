import 'package:go_router/go_router.dart';
import 'package:wassaly/core/routing/app_routes.dart';
import 'package:wassaly/core/routing/global_navigator.dart';
import 'package:wassaly/features/auth/presentation/screens/login_page.dart';
import 'package:wassaly/features/onboarding/presentation/screens/onboarding_page.dart';

final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: AppRoutes.onboarding,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.onboarding,
      name: 'onboarding',
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: AppRoutes.login,
      name: 'login',
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
