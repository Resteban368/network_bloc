
import 'package:go_router/go_router.dart';

import '/screens/home_screen.dart';
import '/screens/splash_screen.dart';
import '/screens/no_internet_connection_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/no-internet',
      builder: (context, state) => const NoInternetConnectionScreen(),
    ),
  ],
);
