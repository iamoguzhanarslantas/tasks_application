import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_application/src/home/home.dart'
    show HomePage, ProjectsPage, TasksPage, TeamsPage;

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: HomePage.routeName,
    routes: <RouteBase>[
      GoRoute(
        path: HomePage.routeName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: ProjectsPage.routeName,
        builder: (context, state) => const ProjectsPage(),
      ),
      GoRoute(
        path: TasksPage.routeName,
        builder: (context, state) => const TasksPage(),
      ),
      GoRoute(
        path: TeamsPage.routeName,
        builder: (context, state) => const TeamsPage(),
      )
    ],
  ),
);
