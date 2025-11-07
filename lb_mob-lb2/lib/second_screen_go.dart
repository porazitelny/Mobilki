import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondScreenGo extends StatelessWidget {
  const SecondScreenGo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Второй экран (GoRouter)'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Это второй экран c GoRouter',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.push('/third');
              },
              child: const Text('Перейти на третий экран (context.push)'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Назад (context.pop)'),
            ),
          ],
        ),
      ),
    );
  }
}