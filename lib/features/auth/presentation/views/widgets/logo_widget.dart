import 'package:chat_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      alignment: Alignment.topCenter,
      AppImages.logo,
      width: 300.w,
      height: 250.h,
    );
  }
}
