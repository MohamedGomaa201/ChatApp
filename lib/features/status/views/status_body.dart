import 'package:chat_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  AppImages.userImage,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
