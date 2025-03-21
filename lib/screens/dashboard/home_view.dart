import 'package:back_bone/constants/app_colors.dart';
import 'package:back_bone/constants/app_images.dart';
import 'package:back_bone/extensions/spacing_extensions.dart';
import 'package:back_bone/utils/flutter_custom_text.dart';
import 'package:back_bone/utils/flutter_input_field.dart';
import 'package:back_bone/utils/gradient_boreded_button.dart';
import 'package:back_bone/utils/gradient_colored_button.dart';
import 'package:back_bone/utils/gradient_container.dart';
import 'package:back_bone/utils/gradient_text.dart';
import 'package:back_bone/utils/image_card.dart';
import 'package:back_bone/utils/svg_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientText(
            text: 'Welcome to',
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),

          GradientText(
            text: 'Backbone Chit Funds',
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),

          context.verticalSpacing(20.h),

          ClipRRect(
            child: ImageCard(
              imageUrl: AppImages().homeBanner,
              width: 328.w,
              height: 185.h,
              fit: BoxFit.fill,
            ),
          ),

          context.verticalSpacing(20.h),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: GradientBorderedButton(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50.r),
                    child: GradientText(text: 'View Details'),
                  ),
                ),
                context.horizontalSpacing(20.w),
                Expanded(
                  child: GradientBorderedButton(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50.r),
                    child: GradientText(text: 'View Details'),
                  ),
                ),
              ],
            ),
          ),

          context.verticalSpacing(20.h),

          Expanded(
            child: GradientContainer(
              horPadding: 16.w,
              vertPadding: 12.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GradientText(
                    text: 'Chit Scheme Analyzer',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                  context.verticalSpacing(8.h),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GradientText(
                                  text: 'Chit Value',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                FlutterInputField(
                                  inputType: TextInputType.text,
                                  filled: true,
                                  fillColor: AppColors().blackColor,
                                  enableBorder: false,
                                  verticalContentPadding: 10.h,
                                  hintText: 'eg.,100000',

                                  maxLength: 10,
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: SvgImageCard(
                                      imageUrl: AppImages().dropDownIcon,

                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        context.horizontalSpacing(16.w),
                        SizedBox(
                          width: 127.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GradientText(
                                text: 'Mobile',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              FlutterInputField(
                                inputType: TextInputType.text,
                                filled: true,
                                fillColor: AppColors().blackColor,
                                enableBorder: false,
                                verticalContentPadding: 10.h,
                                hintText: 'eg.,12',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  context.verticalSpacing(6.h),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GradientText(
                                  text: 'EMI',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                FlutterInputField(
                                  inputType: TextInputType.text,
                                  filled: true,
                                  fillColor: AppColors().blackColor,
                                  enableBorder: false,
                                  verticalContentPadding: 10.h,
                                  hintText: 'eg.,5000',

                                  maxLength: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        context.horizontalSpacing(16.w),
                        ImageCard(
                          imageUrl: AppImages().chitFileIcon,
                          width: 80.w,

                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                  context.verticalSpacing(8.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: FlutterCustomText(
                          text:
                              'Note :\nEnter Values In Multiples of Lakhs In Investment',
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(50.r),
                        child: GradientColoredButton(
                          width: 130.w,
                          onTap: () {},
                          borderRadius: BorderRadius.circular(50.r),
                          child: FlutterCustomText(
                            text: 'Login',
                            color: AppColors().blackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          context.verticalSpacing(12.h),
        ],
      ),
    );
  }
}
