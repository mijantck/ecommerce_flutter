import 'package:ecommerce/src/model/respons/CategoryModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class ListItemSelector extends StatefulWidget {
   ListItemSelector({
    Key? key,
    required this.categoriesDataList,
    required this.onItemPressed,
  }) : super(key: key);

   List<CategoryData> categoriesDataList;
  Function(int) onItemPressed;

  @override
  State<ListItemSelector> createState() => _ListItemSelectorState();
}

class _ListItemSelectorState extends State<ListItemSelector> {


  Widget item(CategoryData item, int index, Function(int p1) onItemPressed) {
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
        child: Container(
          width: 100,
          child: Column(
            children: [
              SizedBox(height: 5,),
              Container(
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                  child: Image.network(item.categories![0].logo!),
                ),
              ),
              SizedBox(height: 5,),
              Text('${item.name}',textAlign: TextAlign.center,maxLines: 2,)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoriesDataList.length,
        itemBuilder: (_, index) => item(widget.categoriesDataList[index], index,widget.onItemPressed),
      ),
    );
  }
}
