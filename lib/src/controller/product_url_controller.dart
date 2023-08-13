import 'dart:convert';

import 'package:ecommerce/core/app_data.dart';
import 'package:ecommerce/src/model/respons/CategoryModel.dart';
import 'package:ecommerce/src/model/respons/ProductModel.dart';
import 'package:get/get.dart';

import '../../core/ApiClient.dart';

class ProductUrlController extends GetxController{

  ProductModel? productModelHome;
  ProductModel? productModelCategory;
  bool isFromCategory = false;

  @override
  void onInit() {
    super.onInit();
    // Fetch slider data from API or any other source
    fetchProduct('');
  }


  void fetchProduct(String group) async {


    try {
      var apiClient = ApiClient();
      var response = await apiClient.get(Uri.parse('https://testapi.gprojukti.com/api/v1.0/products/public/product-list?page_size=6&page=1&group__slug=$group'));
      print('skgfsdjh 9999 ${response.body}');
      if (response.statusCode == 200) {
        print('skgfsdjh 33333 ${response.statusCode}');
        var jsonData = json.decode(response.body);
        productModelHome = ProductModel.fromJson(jsonData);
        print('dgfhsdj 44444 ${productModelHome!.data!.data!.length}');
        // var categoryModelList = jsonData.map((item) => CategoryModel.fromJson(item)).toList();
        // mpEventsList.value = categoryModelList;
        update();
      }
    } catch (e) {
      print('Error fetching sliders: $e');
    }
  }

  void fetchProductSubCategory(String group, String subSlug) async {
    print('Fetching subcategory products for subSlug: $subSlug');

    try {
      var apiClient = ApiClient();
      var response = await apiClient.get(Uri.parse('https://testapi.gprojukti.com/api/v1.0/products/public/product-list?page_size=10&page=1&group__slug=$subSlug'));

      if (response.statusCode == 200) {
        print('Response status code: ${response.statusCode}');

        var jsonData = json.decode(response.body);
        var data = jsonData['data'] as List; // Extract the data field as a list
        if (data.isEmpty) {
          // If the data field is empty, fetch product category
          fetchProductCategory(group);
        } else {
          isFromCategory = false;
          productModelCategory = ProductModel.fromJson(jsonData);
          update();
        }
      }
    } catch (e) {
      print('Error fetching subcategory products: $e');
    }
  }

  void fetchProductCategory(String group) async {
    print('Fetching category products for group: $group');

    try {
      var apiClient = ApiClient();
      var response = await apiClient.get(Uri.parse('https://testapi.gprojukti.com/api/v1.0/products/public/product-list?page_size=10&page=1&group__slug=$group'));

      if (response.statusCode == 200) {
        print('Response status code: ${response.statusCode}');
        var jsonData = json.decode(response.body);
        productModelCategory = ProductModel.fromJson(jsonData);
        isFromCategory = true;

        update();
      }
    } catch (e) {
      print('Error fetching category products: $e');
    }
  }




}