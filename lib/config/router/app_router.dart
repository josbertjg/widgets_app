import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/routes.dart';
import '../../presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
      ] +
      (appRoutes
          .map(
            (route) => GoRoute(
              path: route.link,
              builder: (context, state) => route.screen,
            ),
          )
          .toList()),
);
