import 'package:assign/feature/screens/home_screen/home_screen.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  @override
  void onInit() {
    screenRedirect();

    super.onInit();
  }

  void screenRedirect() async {
    Future.delayed(const Duration(seconds: 5), () async {
      Get.to(() => const HomeScreen());
    });
  }
}
