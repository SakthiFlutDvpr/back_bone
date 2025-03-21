import 'package:back_bone/routes/app_bindings.dart';
import 'package:back_bone/screens/dashboard/dashboard_screen.dart';
import 'package:back_bone/screens/login_screen.dart';
import 'package:back_bone/screens/otp_screen.dart';
import 'package:back_bone/screens/splash_screen.dart';
import 'package:back_bone/screens/welcome_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._internal();

  static AppRoutes instance = AppRoutes._internal();

  factory AppRoutes() {
    return instance;
  }

  static final String splashScreen = '/splash';

  static final String welcomeScreen = '/welcome_screen';

  static final String loginScreen = '/login_screen';

  static final String otpScreen = '/otp_screen';

  static final String dashboardScreen = '/dashboard_screen';

  final List<GetPage> getPages = <GetPage>[
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: welcomeScreen,

      page: () => WelcomeScreen(),
      binding: WelcomeBinding(),
    ),

    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),

    GetPage(name: otpScreen, page: () => OtpScreen(), binding: OtpBinding()),

    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      binding: HomeBinding(),
    ),
  ];
}
