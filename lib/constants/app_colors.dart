import 'dart:ui';

class AppColors {
  static final AppColors instance = AppColors._internal();

  AppColors._internal();

  factory AppColors() {
    return instance;
  }

  Color get blackColor => Color(0xff000000);

  Color get whiteColor => Color(0xffFFFFFF);

  Color get hintColor => Color(0xffFFFFFF).withOpacity(0.5);

  Color get keyboardArrow => Color(0xff333333);

  List<Color> get gradients => [
    Color(0xffBF9347),
    Color(0xffFBF398),
    Color(0xffF0D571),
    Color(0xffF9F194),
    Color(0xffDEAB3D),
  ];
}
