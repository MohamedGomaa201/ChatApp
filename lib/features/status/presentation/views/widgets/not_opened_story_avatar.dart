import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/shared%20widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotOpenedStoryAvatar extends StatelessWidget {
  const NotOpenedStoryAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primaryColor,
      radius: 38.r,
      child: const UserAvatar(),
    );
  }
}
