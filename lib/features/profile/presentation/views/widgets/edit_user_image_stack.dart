import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditUserImageStack extends StatelessWidget {
  final String image;
  const EditUserImageStack({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 75.r,
          foregroundImage: NetworkImage(image),
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
