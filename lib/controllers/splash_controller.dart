import 'package:back_bone/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  authStatus() async {
    await Future.delayed(const Duration(seconds: 1));

    Get.offNamed(AppRoutes.welcomeScreen);
  }

  @override
  void onInit() {
    authStatus();

    super.onInit();
  }
}
