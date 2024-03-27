import 'package:bloc_features/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../../main.dart';

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
  ],
);
