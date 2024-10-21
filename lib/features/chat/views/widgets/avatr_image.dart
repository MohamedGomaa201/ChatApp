import 'package:chat_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.avatar,
      width: 90,
    );
  }
}
