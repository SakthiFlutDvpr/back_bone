import 'package:back_bone/constants/app_colors.dart';
import 'package:back_bone/constants/app_images.dart';
import 'package:back_bone/extensions/spacing_extensions.dart';
import 'package:back_bone/routes/app_routes.dart';
import 'package:back_bone/utils/flutter_custom_text.dart';
import 'package:back_bone/utils/gradient_boreded_button.dart';
import 'package:back_bone/utils/gradient_colored_button.dart';
import 'package:back_bone/utils/gradient_text.dart';
import 'package:back_bone/utils/image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().blackColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 80.h, left: 20.w, right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    text: 'Welcome to',
                    fontSize: 35.sp,
                    fontWeight: FontWeight.w300,
                  ),

                  GradientText(
                    text: 'Backbone Chit Funds',
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),

            context.verticalSpacing(30.h),

            ImageCard(
              imageUrl: AppImages().goldTree,
              width: 360.w,
              height: 313.h,
              fit: BoxFit.fitWidth,
            ),

            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 50.w, right: 50.w, top: 20.h),
              child: Column(
                children: [
                  GradientColoredButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.loginScreen);
                    },

                    child: FlutterCustomText(
                      text: 'Login',
                      color: AppColors().blackColor,
                    ),
                  ),
                  context.verticalSpacing(8.h),
                  FlutterCustomText(
                    text: '(Or)',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  context.verticalSpacing(8.h),
                  GradientBorderedButton(
                    onTap: () {
                      //Get.toNamed(AppRoutes.loginScreen);
                    },
                    child: GradientText(text: 'Enquiry'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
