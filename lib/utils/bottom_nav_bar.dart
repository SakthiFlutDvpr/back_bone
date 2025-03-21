import 'package:back_bone/constants/app_colors.dart';
import 'package:back_bone/constants/app_images.dart';
import 'package:back_bone/controllers/dashboard_controller.dart';
import 'package:back_bone/utils/svg_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardController controller = Get.find<DashboardController>();
    return Obx(() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
            onTap: controller.changeNavBarIndex,
            currentIndex: controller.currentIndex.value,
            selectedLabelStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().blackColor,
              fontFamily: 'InriaSans',
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().blackColor,
              fontFamily: 'InriaSans',
            ),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors().blackColor,
            unselectedItemColor: AppColors().blackColor,
            items: [
              BottomNavigationBarItem(
                icon: SvgImageCard(
                  imageUrl: AppImages().homeIcon,
                  height: 30.h,
                  width: 30.w,
                ),
                activeIcon: SvgImageCard(
                  imageUrl: AppImages().filledHomeIcon,
                  height: 30.h,
                  width: 30.w,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgImageCard(
                  imageUrl: AppImages().chitsIcon,
                  width: 30.w,
                  height: 30.h,
                ),
                activeIcon: SvgImageCard(
                  imageUrl: AppImages().filledChitsIcon,
                  height: 30.h,
                  width: 30.w,
                ),
                label: 'My Chits',
              ),
              BottomNavigationBarItem(
                tooltip: 'Home Icon',
                icon: SvgImageCard(
                  imageUrl: AppImages().autionIcon,
                  height: 30.h,
                  width: 30.w,
                ),
                activeIcon: SvgImageCard(
                  imageUrl: AppImages().filledAutionIcon,
                  height: 30.h,
                  width: 30.w,
                ),
                label: 'Live Auction',
              ),
              BottomNavigationBarItem(
                icon: SvgImageCard(
                  imageUrl: AppImages().historyIcon,
                  height: 30.h,
                  width: 30.w,
                ),
                activeIcon: SvgImageCard(
                  imageUrl: AppImages().filledHistoryIcon,
                  height: 30.h,
                  width: 30.w,
                ),
                label: 'History',
              ),
            ],
          ),
        ),
      );
    });
  }
}
