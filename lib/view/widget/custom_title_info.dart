import 'package:flutter/material.dart';

import '../../shared/components/component.dart';
import 'custom_text.dart';

class CustomTitleInfo extends StatelessWidget {
  CustomTitleInfo({
    Key key,
    @required this.title,
    @required this.text,
    @required this.image,
    @required this.user,
  }) : super(key: key);

  String image;
  String text;
  String title;
  bool user;

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
            if(user)
              Column(
                children: [
                  sizedBoxHeight(sizeHeight * 0.018),
                  CustomText(text: "Garden User", fontSize: 20),
                ],
              ),
            sizedBoxHeight(sizeHeight * 0.018),
            CustomText(
              text: title,
              color: Colors.black.withOpacity(0.6),
              fontSize: 18,
              sizeMaxLines: 1000,
            ),
          ],
        ),
      ),
    );
  }
}
