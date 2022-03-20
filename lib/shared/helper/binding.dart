import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';
import 'package:plant_scope/core/view_model/layout_controller.dart';


class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<LayoutController>(LayoutController());
  }
}