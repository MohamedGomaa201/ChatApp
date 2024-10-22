import 'package:chat_app/features/status/views/widgets/avatar_lable.dart';
import 'package:chat_app/features/status/views/widgets/opened_story_avatar.dart';
import 'package:flutter/material.dart';

class OpenedStoryRow extends StatelessWidget {
  const OpenedStoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          OpenedStoryAvatar(),
          SizedBox(width: 25),
          AvatarLabel(
              firstLable: "Mohamed Gomaa", secondLable: "Today, 12:00 PM"),
        ],
      ),
    );
  }
}
