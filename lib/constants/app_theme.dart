import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static final AppTheme instance = AppTheme._internal();

  AppTheme._internal();

  factory AppTheme() {
    return instance;
  }

  ThemeData get themeData => ThemeData(
    textTheme: TextTheme(
      // welcome text headline
      headlineLarge: TextStyle(
        fontSize: 40.sp,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
    ),
  );
}
