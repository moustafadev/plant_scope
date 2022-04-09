import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:plant_scope/shared/components/component.dart';

import 'custom_caches_network_image.dart';

class CustomPageViewTitleGallery extends StatelessWidget {
  CustomPageViewTitleGallery({Key key, this.index, this.image, this.details})
      : super(key: key);
  int index;
  String image;

  List<String> details;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: index);
    return Center(
      child: Column(
        children: [
          sizedBoxHeight(80),
          Container(
              height: 300,
              width: double.infinity,
              child: CustomCachedNetworkImage(
                height: 100,
                url: image,
              ),),
          Spacer(),
          Container(
            height: 300,
            child: PageView(
              controller: controller,
              children: List.generate(
                details.length,
                (index) => CustomCachedNetworkImage(
                  height: 100,
                  url: details[index],
                ),
              ),
            ),
          ),
          sizedBoxHeight(100)
        ],
      ),
    );
  }
}
