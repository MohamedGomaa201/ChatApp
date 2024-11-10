import 'package:chat_app/features/splash/presentation/view/widgets/logo_image.dart';
import 'package:chat_app/features/splash/presentation/view/widgets/text_of_end_the_screen.dart';
import 'package:chat_app/features/splash/presentation/view/widgets/text_under_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 2),
        const LogoImage(),
        SizedBox(height: 8.h),
        const TextUnderLogo(),
        const Spacer(flex: 1),
        const TextOfEndTheScreen(),
        const Spacer(flex: 1),
      ],
    );
  }
}
