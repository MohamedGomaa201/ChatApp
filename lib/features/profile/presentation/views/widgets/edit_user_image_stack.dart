import 'package:chat_app/core/constants/app_images.dart';
import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class EditUserImageStack extends StatelessWidget {
  const EditUserImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 75,
          foregroundImage: AssetImage(AppImages.userImage),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: IconButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
