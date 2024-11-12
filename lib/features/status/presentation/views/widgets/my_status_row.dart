import 'package:chat_app/features/status/presentation/views/widgets/add_story_button.dart';
import 'package:chat_app/features/status/presentation/views/widgets/avatar_lable.dart';
import 'package:chat_app/core/shared%20widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStatusRow extends StatelessWidget {
  const MyStatusRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Stack(
          children: [
            UserAvatar(),
            AddStoryButton(),
          ],
        ),
        SizedBox(width: 25.w),
        const AvatarLabel(
            firstLable: 'My Status', secondLable: 'Tap to add status update'),
      ],
    );
  }
}
