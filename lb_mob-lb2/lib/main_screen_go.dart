import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreenGo extends StatelessWidget {
  const MainScreenGo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главный экран (GoRouter)'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Добро пожаловать на главный экран c GoRouter',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.push('/second');
              },
              child: const Text('Перейти на второй экран (context.push)'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/second');
              },
              child: const Text('Перейти на второй экран (context.go)'),
            ),
          ],
        ),
      ),
    );
  }
}