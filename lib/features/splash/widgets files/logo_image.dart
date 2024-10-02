import 'package:chat_app/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        logo,
      ),
    );
  }
}
