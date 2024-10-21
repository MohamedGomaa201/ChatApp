import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle textStyle15 = const TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle16 = const TextStyle(
    fontSize: 16,
    color: Color(0xFF608190),
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle18 = const TextStyle(
    fontSize: 18,
    color: Colors.black,
  );
  static TextStyle textStyle24 = const TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle28 = const TextStyle(
    fontSize: 28,
    color: Colors.black,
    fontWeight: FontWeight.w800,
  );
  static TextStyle selectedBottomNavBar = const TextStyle(
    fontSize: 17,
    color: AppColors.primaryColor,
    // fontWeight: FontWeight.w600,
  );
  static TextStyle unSelectedBottomNavBar = const TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );
}
