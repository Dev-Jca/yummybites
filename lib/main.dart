import 'package:flutter/material.dart';
import 'deprecated/app_theme.dart';
import 'deprecated/home.dart';
import 'home/main_food_page.dart';

void main() {
  final theme = AppTheme.light();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const MainFoodPage(),
    ),
  );
}
