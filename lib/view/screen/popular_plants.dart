import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:plant_scope/core/service/database/local_data_json.dart';
import 'package:plant_scope/core/view_model/layout_controller.dart';
import 'package:plant_scope/shared/constants/constant.dart';
import 'package:plant_scope/view/widget/custom_text.dart';
import '../../shared/components/component.dart';
import 'items_screen.dart';

class PopularPlants extends StatelessWidget {
  const PopularPlants({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    return GetBuilder<LayoutController>(
      init: LayoutController(),
      builder: (controller) => SingleChildScrollView(
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: nameImage.length,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: (){
              controller.getItems(index);
              navigatorTo(
                context,
                ItemsScreen(
                  item: controller.details,
                ),
              );
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: sizeHeight * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          kImageItems[index],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CustomText(
                    text: textItems[index],
                    fontSize: 20.0,
                    color: Colors.white,
                    sizeMaxLines: 10000,
                  ),
                ),
              ],
            ),
          ),
          staggeredTileBuilder: (int index) =>
              StaggeredTile.count(2, index.isEven ? 2 : 2),
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 25.0,
        ),
      ),
    );
  }
}
