import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFloatingActionButton extends StatelessWidget {
  final IconData floatingIcon;
  const HomeFloatingActionButton({
    super.key,
    required this.floatingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(12.r),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          floatingIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
