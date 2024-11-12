import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextUnderLogo extends StatelessWidget {
  const TextUnderLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "WhatsUp",
      style: TextStyle(
        color: AppColors.primaryColor,
        fontSize: 32.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
