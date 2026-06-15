import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leaflink/theme.dart';
import 'core/router.dart';

void main() {
  runApp(const ProviderScope(child: LeafLinkApp()));
}

class LeafLinkApp extends StatelessWidget {
  const LeafLinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'LeafLink - Farm to Cup',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}