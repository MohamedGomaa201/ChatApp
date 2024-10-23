import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AddStoryButton extends StatelessWidget {
  const AddStoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: AppColors.primaryColor,
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Icon(
          Icons.add,
          color: AppColors.primaryColor,
          size: 20,
        ),
      ),
    );
  }
}
