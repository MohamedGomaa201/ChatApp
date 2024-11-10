import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaveProfileButton extends StatelessWidget {
  const SaveProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(),
        ),
        iconColor: WidgetStatePropertyAll(Colors.white),
        backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.save),
          SizedBox(width: 15.w),
          Text(
            "Save Profile",
            style: Styles.textStyle18.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
