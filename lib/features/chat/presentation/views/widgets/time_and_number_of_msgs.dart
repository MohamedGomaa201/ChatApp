import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeAndNumberOfMsgs extends StatelessWidget {
  const TimeAndNumberOfMsgs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            const Text("12:00"),
            SizedBox(width: 5.w),
            const Text("PM"),
          ],
        ),
        SizedBox(height: 10.h),
        Container(
          width: 30.w,
          height: 30.h,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Center(
            child: Text(
              "2",
              style: Styles.textStyle15.copyWith(fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    );
  }
}
