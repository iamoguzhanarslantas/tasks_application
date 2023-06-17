import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_application/src/home/home.dart' show HomePage;

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: HomePage.routeName,
    routes: <RouteBase>[
      GoRoute(
        path: HomePage.routeName,
        builder: (context, state) => const HomePage(),
      ),
    ],
  ),
);
