import 'package:back_bone/constants/app_theme.dart';
import 'package:back_bone/routes/app_bindings.dart';
import 'package:back_bone/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(360, 800),
      builder:
          (context, w) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Back-Bone',
            theme: AppTheme().themeData,
            initialBinding: SplashBinding(),
            initialRoute: AppRoutes.splashScreen,

            getPages: AppRoutes().getPages,
          ),
    );
  }
}

String url =
    "https://www.figma.com/design/D2ysSHAwHcpI4oo0JeylWt/Figma-All?node-id=48-27430&p=f&t=UgrdELSyWNEDadFT-0";
