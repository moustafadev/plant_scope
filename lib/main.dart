import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:plant_scope/shared/constants/constant.dart';
import 'package:plant_scope/shared/helper/binding.dart';
import 'package:plant_scope/shared/helper/page_routes.dart';
import 'package:plant_scope/view/screen/main_screen.dart';

void main()async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'library',
      initialBinding: Binding(),
      getPages: AppRoutesGet.getListPages(),
      theme: ThemeData.light().copyWith(
        primaryColor: kPrimaryColor,
        appBarTheme: AppBarTheme(
          color: kPrimaryColor
        )
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
