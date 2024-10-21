import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class HomeFloatingActionButton extends StatelessWidget {
  final IconData floatingIcon;
  const HomeFloatingActionButton({
    super.key,
    required this.floatingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      padding: const EdgeInsets.all(5),
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
