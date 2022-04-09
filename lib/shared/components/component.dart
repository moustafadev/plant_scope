import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_scope/view/widget/custom_text.dart';

Widget sizedBoxHeight(double height) => SizedBox(
      height: height,
    );

Widget sizedBoxWidth(double width) => SizedBox(
      width: width,
    );

Widget buildLoadingSearch(context, {double height = 150}) => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/animation/search.json',
            height: height,
            fit: BoxFit.cover,
          ),
          CustomText(text: "Not Results", fontSize: 18)
        ],
      ),
    );


void navigatorTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

Widget textBottomItem({
  @required onPressed,
  @required String text,
}) =>
    TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
