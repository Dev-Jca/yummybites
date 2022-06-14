import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yummybites/controllers/popular_product_controller.dart';
import 'package:yummybites/pages/food/popular_food_detail.dart';
import 'package:yummybites/pages/food/recommended_food_detail.dart';
import 'package:yummybites/pages/home/food_page_body.dart';
import 'pages/home/main_food_page.dart';
import 'package:yummybites/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainFoodPage(),
    );
  }
}
