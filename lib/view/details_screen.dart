import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_scope/model/detailsModel.dart';
import 'package:plant_scope/shared/components/component.dart';
import 'package:plant_scope/view/widget/custom_care.dart';
import 'package:plant_scope/view/widget/custom_characteristics.dart';
import 'package:plant_scope/view/widget/custom_condition.dart';
import 'package:plant_scope/view/widget/custom_known.dart';
import 'package:plant_scope/view/widget/custom_text.dart';
import 'package:plant_scope/view/widget/custom_title_info.dart';

import '../core/view_model/layout_controller.dart';
import '../shared/constants/constant.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key key, @required this.details, @required this.index}) : super(key: key);

  List<DetailsModel> details;
  int index;

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          showSliverAppBar(details[index].name),
          SliverList(
            delegate: SliverChildListDelegate([
              sizedBoxHeight(sizeHeight * 0.018),
              CustomKnown(
                details: details[index],
              ),
              sizedBoxHeight(sizeHeight * 0.018),
              CustomTitleInfo(
                title: details[index].description,
                image: kImageLeafPlant,
                text: 'Description',
                user: false,
              ),
              sizedBoxHeight(sizeHeight * 0.018),
              CustomCharacteristics(
                details: details[index],
              ),
              sizedBoxHeight(sizeHeight * 0.018),
              CustomCondition(
                details: details[index],
              ),
              sizedBoxHeight(sizeHeight * 0.018),
              CustomCare(
                details: details[index],
              ),
              sizedBoxHeight(sizeHeight * 0.018),
              if (details[index].diseases != "")
                CustomTitleInfo(
                  title: details[index].diseases,
                  image: kImageDiseases,
                  text: 'Pests and Diseases',
                  user: false,
                ),
              if (details[index].gardenUse != "")
                Column(
                  children: [
                    sizedBoxHeight(sizeHeight * 0.018),
                    CustomTitleInfo(
                      title: details[index].gardenUse,
                      image: kImageGardenUser,
                      text: 'User',
                      user: true,
                    ),
                  ],
                ),
            ]),
          ),
        ],
      ),
    );
  }

  SliverAppBar showSliverAppBar(String text) {
    return SliverAppBar(
      title: Text(text),
      expandedHeight: 300.0,
      leadingWidth: double.infinity,
      floating: true,
      snap: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background:  CachedNetworkImage(
          width: double.infinity,
          fit: BoxFit.cover,
          imageUrl: details[index].image,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
