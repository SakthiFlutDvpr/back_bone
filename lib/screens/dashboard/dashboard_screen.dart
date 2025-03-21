import 'package:back_bone/constants/app_colors.dart';
import 'package:back_bone/constants/app_images.dart';
import 'package:back_bone/controllers/dashboard_controller.dart';
import 'package:back_bone/screens/dashboard/auction_view.dart';
import 'package:back_bone/screens/dashboard/chits_view.dart';
import 'package:back_bone/screens/dashboard/history_view.dart';
import 'package:back_bone/screens/dashboard/home_view.dart';
import 'package:back_bone/utils/action_button.dart';
import 'package:back_bone/utils/bottom_nav_bar.dart';
import 'package:back_bone/utils/image_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardController controller = Get.find<DashboardController>();
    return Scaffold(
      backgroundColor: AppColors().blackColor,
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        leading: ActionButton(
          url: AppImages().menuIcon,
          onTap: () {
            Get.back();
          },
        ),

        actions: [
          GestureDetector(
            onTap: () {},
            child: ImageCard(imageUrl: AppImages().whatsAppIcon),
          ),
          ActionButton(url: AppImages().bellIcon, onTap: () {}),
        ],
        backgroundColor: Colors.transparent,
      ),

      body: SafeArea(
        child: Obx(
          () => IndexedStack(
            index: controller.currentIndex.value,
            children: [HomeView(), ChitsView(), AuctionView(), HistoryView()],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavBar(),
    );
  }
}
