import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yummybites/controllers/popular_product_controller.dart';
import 'package:yummybites/data/api/api_client.dart';
import 'package:yummybites/repository/popular_product_repo.dart';
import 'package:yummybites/utils/app_constants.dart';

Future<void> init() async {
  //apiclient
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
