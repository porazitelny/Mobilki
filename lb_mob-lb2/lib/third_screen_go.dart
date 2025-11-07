import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThirdScreenGo extends StatelessWidget {
  const ThirdScreenGo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Третий экран (GoRouter)'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Это третий экран c GoRouter',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Назад (context.pop)'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('На главную (context.go)'),
            ),
          ],
        ),
      ),
    );
  }
}