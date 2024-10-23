import 'package:chat_app/core/shared%20widgets/user_avatar.dart';
import 'package:flutter/material.dart';

class OpenedStoryAvatar extends StatelessWidget {
  const OpenedStoryAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 38,
      child: UserAvatar(),
    );
  }
}