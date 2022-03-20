import 'package:flutter/material.dart';
import 'package:plant_scope/view/widget/appBarHeader.dart';
import 'package:plant_scope/view/widget/custom_text.dart';
import 'package:plant_scope/view/popular_plants.dart';

import '../shared/components/component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBarHeader(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                fontSize: 20,
                text: 'Popular Plants',
                color: Colors.black.withOpacity(0.7),
              ),
              sizedBoxHeight(20.0),
              const PopularPlants(),
            ],
          ),
        ),
      ],
    );
  }
}
