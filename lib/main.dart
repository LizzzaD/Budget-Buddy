import 'package:budget_buddy/features/screens/home_screen.dart';
import 'package:budget_buddy/views/theme/app_theme.dart';
import 'package:budget_buddy/views/theme/styles_palette.dart';
import 'package:budget_buddy/views/ui_kit/app_bars/main_bottom_navigation_bar.dart';
import 'package:budget_buddy/views/ui_kit/charts/pie_chart.dart';
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
