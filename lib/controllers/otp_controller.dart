import 'dart:async';

import 'package:get/get.dart';

class OtpController extends GetxController {
  bool resendSms = false;
  Timer? timer;

  int seconds = 5;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (time) {
      if (seconds <= 1) {
        resendSms = true;
        timer!.cancel();
      }
      --seconds;
      update();
    });
  }

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }
}
