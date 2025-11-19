import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/routes.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: (appRoutes
      .map(
        (route) => GoRoute(
          name: route.name,
          path: route.link,
          builder: (context, state) => route.screen,
        ),
      )
      .toList()),
);
