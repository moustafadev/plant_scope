import 'package:flutter/material.dart';
import 'package:plant_scope/shared/components/component.dart';

import 'package:plant_scope/view/screen/popular_plants.dart';
import 'package:plant_scope/view/widget/custom_app_bar_header.dart';
import 'package:plant_scope/view/widget/custom_text.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBarHeader(),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                fontSize: 20,
                text: 'Popular Plants',
                color: Colors.black.withOpacity(0.7),
              ),
              sizedBoxHeight(5.0),
              const PopularPlants(),
            ],
          ),
        ),
      ],
    );
  }
}
