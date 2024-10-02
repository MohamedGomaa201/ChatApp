import 'package:chat_app/core/constants/asset_colors.dart';
import 'package:flutter/material.dart';

class TextUnderLogo extends StatelessWidget {
  const TextUnderLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "WhatsUp",
      style: TextStyle(
        color: mainColor,
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
