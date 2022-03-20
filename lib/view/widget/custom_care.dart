import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_scope/model/detailsModel.dart';

import '../../core/view_model/layout_controller.dart';
import '../../shared/components/component.dart';
import '../../shared/constants/constant.dart';
import 'custom_desails.dart';
import 'custom_text.dart';

class CustomCare extends StatelessWidget {
  CustomCare({Key key,@required this.details}) : super(key: key);

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
                  kImageCareGuide,
                  height: 22,
                  width: 22,
                ),
                sizedBoxWidth(10.0),
                CustomText(
                  text: "Care Guide",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            sizedBoxHeight(15),
            Column(
              children: List.generate(
                titleCare.length,
                    (index) => customTextBuildList(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List titleText() => [
    details.careGuide.water,
    details.careGuide.fertilization,
    details.careGuide.pruning,
    details.careGuide.plantingTime,
    details.careGuide.propagation,
    details.careGuide.harvestTime,
    details.careGuide.pottingSuggestions,
  ];

  Widget customTextBuildList(int indexs) {
    return titleText()[indexs] != null
        ? CustomDetails(
      textDetails:
      '${titleText()[indexs]}',
      textTitle: titleCare[indexs],
      image: kImagesCareGuide[indexs],
    )
        : const SizedBox();
  }

}
