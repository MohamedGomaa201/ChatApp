import 'package:chat_app/core/shared%20widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpenedStoryAvatar extends StatelessWidget {
  const OpenedStoryAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 38.r,
      child: const UserAvatar(),
    );
  }
}
