import 'dart:ui' show PointerDeviceKind;
import 'package:ecommerce/src/controller/category_controller.dart';
import 'package:ecommerce/src/controller/product_url_controller.dart';
import 'package:ecommerce/src/view/SplashScreenPage.dart';
import 'package:ecommerce/src/view/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app_theme.dart';

void main() {
  Get.put(CategoryController());
  Get.put(ProductUrlController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
      theme: AppTheme.lightAppTheme,
    );
  }
}
