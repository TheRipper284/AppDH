import 'package:flutter/material.dart';
import 'package:integradora2/screens/home_screen.dart';
import 'package:integradora2/theme/app_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}