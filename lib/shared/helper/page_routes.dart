import 'package:get/get.dart';

import '../../view/camera_screen.dart';
import '../../view/details_screen.dart';
import '../../view/home_screen.dart';
import '../../view/my_plants_screen.dart';
import '../../view/type_screen.dart';

class AppRoutesGet {
  static List<GetPage> getListPages() {
    return [
      GetPage(
        name: '/home',
        page: () => HomeScreen(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: '/camera',
        page: () => CameraScreen(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: '/myPlants',
        page: () => MyPlantsScreen(),
        transition: Transition.rightToLeft,
      ),
    ];
  }
}
