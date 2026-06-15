import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.park, size: 100, color: Color(0xFF2E7D32)),
            const SizedBox(height: 24),
            Text("LeafLink", style: Theme.of(context).textTheme.headlineLarge),
            const Text("From Farm to Your Cup", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text("Continue as Guest"),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () => context.go('/home'),
              child: const Text("Login / Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}