import 'package:back_bone/constants/app_colors.dart';
import 'package:back_bone/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Get.find<SplashController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().blackColor,
      body: SafeArea(child: Center(child: Image.asset('images/logo.png'))),
    );
  }
}
