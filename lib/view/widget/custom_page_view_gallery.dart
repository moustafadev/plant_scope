import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'custom_caches_network_image.dart';

class CustomPageViewGallery extends StatelessWidget {
  CustomPageViewGallery({Key key, this.index, this.details}) : super(key: key);
  int index;

  List<String> details;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: index);
    return Center(
      child: Container(
        height: 400,
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
    );
  }
}
