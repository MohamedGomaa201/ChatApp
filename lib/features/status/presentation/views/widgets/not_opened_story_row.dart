import 'package:chat_app/features/status/presentation/views/widgets/avatar_lable.dart';
import 'package:chat_app/features/status/presentation/views/widgets/not_opened_story_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotOpenedStoryRow extends StatelessWidget {
  const NotOpenedStoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Row(
        children: [
          const NotOpenedStoryAvatar(),
          SizedBox(width: 25.w),
          const AvatarLabel(
              firstLable: "Mohamed Gomaa", secondLable: "Today, 12:00 PM"),
        ],
      ),
    );
  }
}
