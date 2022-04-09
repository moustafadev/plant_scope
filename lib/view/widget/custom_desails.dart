import 'package:flutter/material.dart';

import '../../shared/components/component.dart';
import '../../shared/constants/constant.dart';
import 'custom_text.dart';

class CustomDetails extends StatelessWidget {
  CustomDetails({
    Key key,
    @required this.textDetails,
    @required this.textTitle,
    @required this.image,
  }) : super(key: key);

  final _myDivider =
      const Divider(color: Colors.black12, height: 1.2, indent: 0);

  String image;
  String textTitle;
  String textDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              image,
              width: 22,
            ),
            sizedBoxWidth(10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: textTitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  sizedBoxHeight(4),
                  CustomText(
                    text: textDetails,
                    fontSize: 18,
                    sizeMaxLines: 10000,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ],
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
}
