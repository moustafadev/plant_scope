import 'package:flutter/material.dart';
import 'package:plant_scope/model/detailsModel.dart';
import 'package:plant_scope/view/widget/custom_text.dart';
import '../../shared/components/component.dart';
import '../../shared/constants/constant.dart';

class CustomCharacteristics extends StatelessWidget {
  CustomCharacteristics(
      {Key key, @required this.details})
      : super(key: key);


  DetailsModel details;


  final _myDivider =
      const Divider(color: Colors.black12, height: 1.2, indent: 0,);

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  kImageGardenUser,
                  height: sizeHeight * 0.025,
                  width: sizeWidth * 0.045,
                ),
                sizedBoxWidth(sizeWidth * 0.015),
                CustomText(
                  text: "Characteristics",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            sizedBoxHeight(sizeHeight * 0.015),
            Column(
              children: List.generate(
                titleCharacteristics.length,
                (index) =>
                    titleInfo()[index] != "" ? buildRowItem(titleCharacteristics[index], titleInfo()[index],index):SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List titleInfo() => [
    details.characteristics.plantType,
    details.characteristics.lifespan,
    details.characteristics.bloomTime,
    details.characteristics.plantHeight,
    details.characteristics.spread,
    details.characteristics.size,
    details.characteristics.habitat,
    details.characteristics.flower,
    details.characteristics.leaf,
    details.characteristics.fruit,
    details.characteristics.stem,
  ];


  Widget buildRowItem(String text, String text1,int index) => Column(
    children: [
      Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomText(
                  text: text,
                  fontSize: 18,
                  color: Colors.black,
                  sizeMaxLines: 10000,
                ),
              ),
              Expanded(
                flex: 1,
                child: CustomText(
                  text: text1,
                  fontSize: 18,
                  color: Colors.grey,
                  sizeMaxLines: 10000,
                ),
              ),
            ],
          ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: _myDivider,
      ),
    ],
  );
}
