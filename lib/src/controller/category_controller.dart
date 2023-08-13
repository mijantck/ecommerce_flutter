import 'dart:convert';

import 'package:ecommerce/core/app_data.dart';
import 'package:ecommerce/src/model/respons/CategoryModel.dart';
import 'package:get/get.dart';

import '../../core/ApiClient.dart';

class CategoryController extends GetxController{

  CategoryModel? categoryModel;


  @override
  void onInit() {
    super.onInit();
    // Fetch slider data from API or any other source
    fetchCategory();
  }


  void fetchCategory() async {

    var apiClient = ApiClient();
    var response = await apiClient.get(Uri.parse('https://testapi.gprojukti.com/api/v1.0/catalog/public/product-groups?page_size=0'));
    print('skgfsdjh 77 ${response.body}');
    if (response.statusCode == 200) {
      print('skgfsdjh 888 ${response.statusCode}');
      var jsonData = json.decode(response.body);

      categoryModel = CategoryModel.fromJson(jsonData);

      print('dgfhsdj ${categoryModel!.data!.length}');
      // var categoryModelList = jsonData.map((item) => CategoryModel.fromJson(item)).toList();
      // mpEventsList.value = categoryModelList;
      update();
    }
    // try {
    //
    //   }
    // } catch (e) {
    //   print('Error fetching sliders: $e');
    // }
  }


}