import 'package:chat_app/features/status/views/widgets/add_story_button.dart';
import 'package:chat_app/features/status/views/widgets/avatar_lable.dart';
import 'package:chat_app/core/shared%20widgets/user_avatar.dart';
import 'package:flutter/material.dart';

class MyStatusRow extends StatelessWidget {
  const MyStatusRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Stack(
          children: [
            UserAvatar(),
            AddStoryButton(),
          ],
        ),
        SizedBox(width: 25),
        AvatarLabel(firstLable: 'My Status', secondLable: 'Tap to add status update'),
      ],
    );
  }
}
