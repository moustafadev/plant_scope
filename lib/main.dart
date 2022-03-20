import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:plant_scope/shared/constants/constant.dart';
import 'package:plant_scope/shared/helper/binding.dart';
import 'package:plant_scope/shared/helper/page_routes.dart';
import 'package:plant_scope/view/layout.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      getPages: AppRoutesGet.getListPages(),
      theme: ThemeData.light().copyWith(
        primaryColor: kPrimaryColor,
        appBarTheme: AppBarTheme(
          color: kPrimaryColor
        )
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
