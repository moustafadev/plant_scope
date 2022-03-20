import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_scope/model/detailsModel.dart';

import '../../core/view_model/layout_controller.dart';
import '../../shared/components/component.dart';
import '../../shared/constants/constant.dart';
import 'custom_desails.dart';
import 'custom_text.dart';

class CustomCondition extends StatelessWidget {
  CustomCondition({Key key,@required this.details}) : super(key: key);

  DetailsModel details;

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
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
                  kImageCrop,
                  height: 22,
                  width: 22,
                ),
                sizedBoxWidth(10.0),
                CustomText(
                  text: "Conditions Requirement",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            sizedBoxHeight(15),
            Column(
              children: List.generate(
                titleCondition.length,
                    (index) => customTextBuildList(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List titleText() => [
    details.conditions.difficulty,
    details.conditions.sunlight,
    details.conditions.hardiness,
    details.conditions.hardinessZones,
    details.conditions.soil,
  ];

  Widget customTextBuildList(int indexs) {
    return titleText()[indexs] != null
        ? CustomDetails(
      textDetails:
      '${titleText()[indexs]}',
      textTitle: titleCondition[indexs],
      image: kImagesConditions[indexs],
    )
        : const SizedBox();
  }

}
