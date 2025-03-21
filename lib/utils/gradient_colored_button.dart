import 'package:back_bone/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientColoredButton extends StatelessWidget {
  const GradientColoredButton({
    super.key,

    required this.onTap,

    this.height,
    this.width,
    this.vertPadding,
    this.horPadding,
    required this.child,
    this.borderRadius,
  });

  final Function() onTap;
  final Widget child;
  final double? height;
  final double? width;
  final double? vertPadding;
  final double? horPadding;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: height ?? 44.h,
        width: width,

        padding: EdgeInsets.symmetric(
          vertical: vertPadding ?? 4.h,
          horizontal: horPadding ?? 12.w,
        ),
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(8.r),

          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors().gradients,
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
