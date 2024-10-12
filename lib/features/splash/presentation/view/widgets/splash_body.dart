import 'package:chat_app/features/splash/presentation/view/widgets/logo_image.dart';
import 'package:chat_app/features/splash/presentation/view/widgets/text_of_end_the_screen.dart';
import 'package:chat_app/features/splash/presentation/view/widgets/text_under_logo.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(flex: 2),
        LogoImage(),
        SizedBox(height: 8),
        TextUnderLogo(),
        Spacer(flex: 1),
        TextOfEndTheScreen(),
        Spacer(flex: 1),
      ],
    );
  }
}
