import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class TextUnderLogo extends StatelessWidget {
  const TextUnderLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "WhatsUp",
      style: TextStyle(
        color: AppColors.mainColor,
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
