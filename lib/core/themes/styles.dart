import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle textStyle15 = TextStyle(
    fontSize: 15.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle16 = TextStyle(
    fontSize: 16.sp,
    color: const Color(0xFF608190),
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle18 = TextStyle(
    fontSize: 18.sp,
    color: Colors.black,
  );
  static TextStyle textStyle24 = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle28 = TextStyle(
    fontSize: 28.sp,
    color: Colors.black,
    fontWeight: FontWeight.w800,
  );
  static TextStyle selectedBottomNavBar = TextStyle(
    fontSize: 17.sp,
    color: AppColors.primaryColor,
    // fontWeight: FontWeight.w600,
  );
  static TextStyle unSelectedBottomNavBar = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey,
  );
}
