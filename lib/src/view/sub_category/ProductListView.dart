import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/product_url_controller.dart';
import '../../model/respons/CategoryModel.dart';
import '../widget/product_grid_view.dart';

class ProductListView extends StatefulWidget {
  Categories categories;
  CategoryData categoryData;
  int index;
  ProductListView(this.categories,this.categoryData,this.index);

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {

  var productUrlController = Get.put(ProductUrlController());


  @override
  void initState() {
    productUrlController.fetchProductSubCategory(widget.categoryData.slug!,widget.categories.slug!);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: _appBar(context, widget.categories.subcategories![widget.index].name!),

        body: Container(
          margin: EdgeInsets.only(left: 10,right: 10),

          child: GetBuilder(builder: (ProductUrlController controller) {
            if(controller.productModelCategory == null){
              return Center(child: CircularProgressIndicator());
            }else{
              return Column(
                children: [

                  SizedBox(
                    height: 80,
                  ),
                  Visibility(
                    visible: controller.isFromCategory,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text('No Data in Sub Category',style: TextStyle(fontSize: 18,),),
                          ),
                        ),

                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text('Related product',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: ProductGridView(
                        items: controller.productModelCategory!.data!.data,
                        likeButtonPressed: (index) {

                        },
                        // isPriceOff: (product) => controller.isPriceOff(product),
                      )
                  )
                ],
              );


            }

          }),
        )
      ),
    );
  }
  PreferredSizeWidget _appBar(BuildContext context, String titleText) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      title: Text(
        titleText,
        style: TextStyle(color: Colors.black,fontSize: 18), // Adjust the text style as needed
      ),
    );
  }
}
