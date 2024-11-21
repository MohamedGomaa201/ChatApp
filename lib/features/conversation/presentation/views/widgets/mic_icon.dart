import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MicIcon extends StatelessWidget {
  const MicIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
      ),
      color: AppColors.primaryColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(30.r),
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: const Icon(
            Icons.mic,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
