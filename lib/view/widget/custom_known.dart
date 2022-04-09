import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_scope/model/detailsModel.dart';

import '../../core/view_model/layout_controller.dart';
import '../../shared/components/component.dart';
import 'custom_text.dart';

class CustomKnown extends StatelessWidget {
  CustomKnown({Key key, @required this.details}) : super(key: key);

  DetailsModel details;

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(sizeWidth * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextTitle(details.name, details.species, context),
            sizedBoxHeight(sizeHeight * 0.012),
            CustomText(
              text: 'Also known as: ',
              fontSize: sizeWidth * 0.05,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: sizeWidth * 0.04),
              child: Column(
                children: buildListText(context),
              ),
            ),
            sizedBoxHeight(sizeHeight * 0.012), //10
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: "Botanical name: ",
                  fontSize: sizeWidth * 0.04,
                  color: Colors.grey,
                ),
                CustomText(
                  sizeMaxLines: 10000,
                  text: '${details.botanical}',
                  fontSize: sizeWidth * 0.04,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<Widget> buildListText(context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    return List.generate(
      details.known.length,
      (index) => details.known[index] != "" && details.known[index] != null
          ? Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 3.5,
                ),
                sizedBoxWidth(sizeWidth * 0.03),
                CustomText(
                  text: details.known[index],
                  fontSize: sizeWidth * 0.038,
                  sizeMaxLines: 10000,
                ),
              ],
            )
          : SizedBox.fromSize(),
    );
  }

  Widget customTextTitle(String text1, String text2, context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        CustomText(
          text: text1,
          fontSize: sizeWidth * 0.034,
          fontWeight: FontWeight.w700,
          sizeMaxLines: 10000,
        ),
        CustomText(
          text: ' a  species of ',
          fontSize: sizeWidth * 0.034,
          color: Colors.grey,
        ),
        CustomText(
          text: text2,
          fontSize: sizeWidth * 0.036,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
