import 'package:ecommerce/core/app_color.dart';
import 'package:ecommerce/src/view/screen/product_list_screen.dart';
import 'package:ecommerce/src/view/sub_category/ProductListView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/respons/CategoryModel.dart';

class SubCategoryScreen extends StatefulWidget {
  Categories categories;
  CategoryData categoryData;
  SubCategoryScreen(this.categories,this.categoryData);

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {

  Widget item(Subcategories item, int index, Function(int p1) onItemPressed) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(left: 2),
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
        color: AppColor.lightOrange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: (){
          onItemPressed(index);
        },
        child: Card(
          child: Center(child: Text('${item.name}',textAlign: TextAlign.center,maxLines: 2,)),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: _appBar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(left: 10,right: 10),
        child: widget.categories.subcategories!.length == 0 ? Container(
          child: Center(
            child: Text('No Item'),
          ),
        ):GridView.builder(
          itemCount: widget.categories.subcategories!.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 10/10, // Adjust the aspect ratio for the desired height
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (_, index) {
            print('sdfhjksdhf');
            Subcategories subcategories = widget.categories.subcategories![index];
            return item(subcategories,index,(value){

              Get.to(ProductListView(widget.categories,widget.categoryData,index));
            });
          },
        ),

      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
    );
  }
}
