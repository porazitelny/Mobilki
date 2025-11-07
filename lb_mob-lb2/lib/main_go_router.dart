import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'main_screen_go.dart';
import 'second_screen_go.dart';
import 'third_screen_go.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreenGo(),
      ),
      GoRoute(
        path: '/second',
        builder: (context, state) => const SecondScreenGo(),
      ),
      GoRoute(
        path: '/third',
        builder: (context, state) => const ThirdScreenGo(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Демо GoRouter Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: router,
    );
  }
}