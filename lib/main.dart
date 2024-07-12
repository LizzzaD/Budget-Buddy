import 'package:budget_buddy/features/screens/home_screen.dart';
import 'package:budget_buddy/views/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.getLightTheme,
      darkTheme: AppTheme.getDarkTheme,
      home: const HomeScreen(),
    );
  }
}
