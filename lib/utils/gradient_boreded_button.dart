import 'package:back_bone/constants/app_colors.dart';
import 'package:back_bone/constants/app_images.dart';
import 'package:back_bone/utils/image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientBorderedButton extends StatelessWidget {
  const GradientBorderedButton({
    super.key,

    required this.onTap,

    this.height,
    this.width,
    this.vertPadding,
    this.horPadding,
    required this.child,
    this.borderWidth,
    this.borderRadius,
    this.isStack,
  });

  final Widget child;
  final Function() onTap;
  final double? borderWidth;
  final double? height;
  final double? width;
  final double? vertPadding;
  final double? horPadding;
  final BorderRadius? borderRadius;
  final bool? isStack;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius ?? BorderRadius.circular(8.r),
      onTap: onTap,
      child: Stack(
        alignment: Alignment.topRight,
        clipBehavior: Clip.none,
        children: [
          Ink(
            padding: EdgeInsets.all(borderWidth ?? 1.h),
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(8.r),

              gradient: LinearGradient(colors: AppColors().gradients),
            ),
            child: Ink(
              height: height ?? 41.h,
              width: width,

              padding: EdgeInsets.symmetric(
                vertical: vertPadding ?? 4.h,
                horizontal: horPadding ?? 12.w,
              ),
              decoration: BoxDecoration(
                borderRadius: borderRadius ?? BorderRadius.circular(8.r),

                color: AppColors().blackColor,
              ),
              child: Center(child: child),
            ),
          ),
          Visibility(
            visible: isStack ?? false,
            child: Positioned(
              top: -5.h,
              right: -2.w,
              child: ImageCard(
                imageUrl: AppImages().starIcon,
                width: 21.w,
                height: 21.w,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
