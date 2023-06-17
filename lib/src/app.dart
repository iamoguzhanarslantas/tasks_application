import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks_application/src/config.dart' show Config;
import 'package:tasks_application/src/routes/routes.dart' show routerProvider;

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      routerConfig: router,
      title: Config.appTitle,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
    );
  }
}
