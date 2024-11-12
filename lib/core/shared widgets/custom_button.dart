import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String label;
  final Color backgroundColor;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
        padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 14.h),
      ),
      child: Text(
        label,
        style: Styles.textStyle24.copyWith(color: Colors.white),
      ),
    );
  }
}
