import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'deprecated/app_theme.dart';
import 'deprecated/home.dart';
import 'home/main_food_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainFoodPage(),
    ),
  );
}
