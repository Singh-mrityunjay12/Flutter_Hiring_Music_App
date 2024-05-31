import 'package:assign/data/controller/home_controller.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}
