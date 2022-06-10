import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'home.dart';

void main() {
  final theme = AppTheme.dark();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const Home(),
    ),
  );
}
