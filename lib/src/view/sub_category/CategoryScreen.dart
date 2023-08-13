import 'package:ecommerce/src/view/sub_category/SubCategoryScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/respons/CategoryModel.dart';

class CategoryScreen extends StatefulWidget {
  CategoryData categoryData;


  CategoryScreen(this.categoryData);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {


  Widget item(Categories item, int index, Function(int p1) onItemPressed) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(left: 5),
      duration: const Duration(milliseconds: 500),
      width: 100,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: (){
          onItemPressed(index);
        },
        child: Card(
          child: Container(
            width: 100,
            child: Column(
              children: [
                SizedBox(height: 5,),
                Container(
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                    child: Image.network(item.logo!),
                  ),
                ),
                SizedBox(height: 5,),
                Text('${item.name}',textAlign: TextAlign.center,maxLines: 2,)
              ],
            ),
          ),
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
        margin: EdgeInsets.only(left: 10,right: 10),
        child: GridView.builder(
          itemCount: widget.categoryData.categories!.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.8, // Adjust the aspect ratio for the desired height
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (_, index) {
            Categories categories = widget.categoryData.categories![index];
            return item(categories,index,(value){
              Get.to(SubCategoryScreen(categories,widget.categoryData));
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
