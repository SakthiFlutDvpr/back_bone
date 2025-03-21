import 'package:back_bone/constants/app_colors.dart';
import 'package:back_bone/constants/app_images.dart';
import 'package:back_bone/controllers/otp_controller.dart';
import 'package:back_bone/extensions/spacing_extensions.dart';
import 'package:back_bone/utils/action_button.dart';
import 'package:back_bone/utils/flutter_custom_text.dart';
import 'package:back_bone/utils/flutter_input_field.dart';
import 'package:back_bone/utils/flutter_text_button.dart';
import 'package:back_bone/utils/gradient_colored_button.dart';
import 'package:back_bone/utils/gradient_text.dart';
import 'package:back_bone/utils/image_card.dart';
import 'package:back_bone/utils/svg_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  final TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // OtpController controller = Get.find<OtpController>();
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
            mainAxisAlignment: MainAxisAlignment.start,
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
              FlutterCustomText(
                text: 'OTP',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors().whiteColor,
              ),
              context.verticalSpacing(15.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    FlutterCustomText(
                      text:
                          'We have send you a verification code to your \nphone number +91 96******69',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors().whiteColor,
                    ),
                    context.verticalSpacing(15.h),
                    FlutterInputField(
                      inputType: TextInputType.text,
                      filled: true,
                      fillColor: AppColors().blackColor,
                      enableBorder: false,
                      verticalContentPadding: 10.h,
                      hintText: 'Enter Mobile Number',
                      maxLength: 10,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgImageCard(
                          imageUrl: AppImages().sendIcon,

                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    context.verticalSpacing(15.h),
                    FlutterCustomText(
                      text: 'Enter OTP',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors().whiteColor,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 35.w, right: 35.w, top: 10.h),
                child: Column(
                  children: [
                    Pinput.builder(
                      length: 6,
                      controller: pinController,

                      builder: (context, pinItemBuilderState) {
                        return ShaderMask(
                          shaderCallback: (bounds) {
                            return LinearGradient(
                              colors: AppColors().gradients,
                            ).createShader(bounds);
                          },
                          child: Container(
                            padding: EdgeInsets.all(1.r),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.r),
                                color: AppColors().blackColor,
                              ),
                              child: Text(
                                pinItemBuilderState.value,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    GetBuilder<OtpController>(
                      builder: (ctrl) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Visibility(
                                visible: !ctrl.resendSms,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12.h),
                                  child: FlutterCustomText(
                                    text: '${ctrl.seconds.toString()} seconds',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors().whiteColor,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: ctrl.resendSms,
                                child: FlutterTextButton(
                                  onPresssed: () {},
                                  child: GradientText(
                                    text: 'Resend OTP ?',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.w, right: 50.w),
                child: GradientColoredButton(
                  onTap: () {},

                  child: FlutterCustomText(
                    text: 'VERIFY',
                    color: AppColors().blackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
