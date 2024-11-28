import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TimeAndNumberOfMsgs extends StatelessWidget {
  final Timestamp lastMsgTime;
  const TimeAndNumberOfMsgs({
    super.key,
    required this.lastMsgTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(DateFormat('h:mm a').format(lastMsgTime.toDate())),
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
