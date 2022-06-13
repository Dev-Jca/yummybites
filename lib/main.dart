import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yummybites/pages/food/popular_food_detail.dart';
import 'package:yummybites/pages/food/recommended_food_detail.dart';
import 'pages/home/main_food_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RecommendedFoodDetail(),
    ),
  );
}
