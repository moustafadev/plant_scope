import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_scope/model/detailsModel.dart';
import 'package:plant_scope/view/widget/custom_page_view_gallery.dart';

import '../../shared/components/component.dart';
import '../widget/custom_text.dart';
import 'custom_caches_network_image.dart';

class CustomGalleryScreen extends StatelessWidget {
  CustomGalleryScreen({
    Key key,
    @required this.text,
    @required this.image,
    @required this.details,
  }) : super(key: key);

  DetailsModel details;
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    print(details.gallery[0]);
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  height: sizeHeight * 0.025,
                  width: sizeWidth * 0.045,
                ),
                sizedBoxWidth(sizeWidth * 0.015),
                CustomText(
                  text: text,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            sizedBoxHeight(sizeHeight*0.015),
            StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: details.gallery.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: (){
                  navigatorTo(
                    context,
                      CustomPageViewGallery(index: index,details:details.gallery)
                  );
                },
                child: Container(
                  height: sizeHeight * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child:  CustomCachedNetworkImage(
                    height: double.infinity,
                    url: details.gallery[index],
                  ),

                ),
              ),
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 2 : 2),
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 25.0,
            ),
          ],
        ),
      ),
    );
  }


}
