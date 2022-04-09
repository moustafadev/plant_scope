import 'package:get/get.dart';
import 'package:plant_scope/view/screen/camera_screen.dart';
import 'package:plant_scope/view/screen/home_screen.dart';
import 'package:plant_scope/view/screen/my_plants_screen.dart';

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
