import 'package:back_bone/controllers/dashboard_controller.dart';
import 'package:back_bone/controllers/login_controller.dart';
import 'package:back_bone/controllers/otp_controller.dart';
import 'package:back_bone/controllers/splash_controller.dart';
import 'package:back_bone/controllers/welcome_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(() => OtpController());
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
