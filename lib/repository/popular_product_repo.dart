import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yummybites/data/api/api_client.dart';
import 'package:yummybites/utils/app_constants.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.BASE_URL);
  }
}
