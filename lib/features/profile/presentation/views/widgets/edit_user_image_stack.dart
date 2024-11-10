import 'package:chat_app/core/constants/app_images.dart';
import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditUserImageStack extends StatelessWidget {
  const EditUserImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 75.r,
          foregroundImage: const AssetImage(AppImages.userImage),
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
