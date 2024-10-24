import 'package:chat_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 35,
      foregroundImage: AssetImage(AppImages.userImage),
    );
  }
}
