import 'package:back_bone/constants/app_colors.dart';
import 'package:back_bone/constants/app_images.dart';
import 'package:back_bone/extensions/spacing_extensions.dart';
import 'package:back_bone/routes/app_routes.dart';
import 'package:back_bone/utils/action_button.dart';
import 'package:back_bone/utils/flutter_custom_text.dart';
import 'package:back_bone/utils/flutter_input_field.dart';
import 'package:back_bone/utils/flutter_text_button.dart';
import 'package:back_bone/utils/gradient_boreded_button.dart';
import 'package:back_bone/utils/gradient_colored_button.dart';
import 'package:back_bone/utils/gradient_text.dart';
import 'package:back_bone/utils/image_card.dart';
import 'package:back_bone/utils/svg_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ActionButton(
          url: AppImages().backIcon,
          onTap: () {
            Get.back();
          },
        ),

        backgroundColor: Colors.transparent,
        foregroundColor: AppColors().whiteColor,
      ),
      backgroundColor: AppColors().blackColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
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
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
              ImageCard(
                imageUrl: AppImages().goldTree,
                width: 184.w,
                height: 150.h,
                fit: BoxFit.contain,
              ),

              Container(
                padding: EdgeInsets.only(left: 40.w, right: 40.w),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlutterCustomText(
                      text: 'Login',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors().whiteColor,
                    ),
                    context.verticalSpacing(15.h),
                    FlutterInputField(
                      inputType: TextInputType.text,
                      filled: true,
                      fillColor: AppColors().blackColor,
                      enableBorder: false,
                      verticalContentPadding: 8.h,
                      hintText: 'Enter Chit Id',
                    ),
                    context.verticalSpacing(20.h),
                    FlutterInputField(
                      inputType: TextInputType.text,
                      filled: true,
                      fillColor: AppColors().blackColor,
                      enableBorder: false,
                      obscure: true,
                      hintText: 'Enter Password',
                      verticalContentPadding: 10.h,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgImageCard(
                          imageUrl: AppImages().pwdHideIcon,

                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlutterTextButton(
                          onPresssed: () {},
                          child: GradientText(
                            text: 'ForgetPassword',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 50.w, right: 50.w, top: 15.h),
                child: Column(
                  children: [
                    GradientColoredButton(
                      onTap: () {},

                      child: FlutterCustomText(
                        text: 'Login',
                        color: AppColors().blackColor,
                      ),
                    ),
                    context.verticalSpacing(12.h),
                    FlutterCustomText(
                      text: '(Or) login with',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    context.verticalSpacing(12.h),
                    GradientBorderedButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.otpScreen);
                      },
                      child: GradientText(text: 'Mobile Number'),
                    ),
                  ],
                ),
              ),

              // FlutterTextButton(
              //   onPresssed: () {},
              //   icon: Icon(
              //     Icons.keyboard_arrow_right,
              //     size: 25.sp,
              //     color: AppColors().keyboardArrow,
              //   ),
              //   iconAlignment: IconAlignment.end,

              //   child: FlutterCustomText(
              //     text: 'Guest Mode',
              //     fontSize: 18.sp,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
