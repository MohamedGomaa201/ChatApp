import 'package:chat_app/core/constants/app_images.dart';
import 'package:chat_app/core/shared%20widgets/custom_text_form.dart';
import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const SizedBox(height: 15),
        Stack(
          children: [
            const CircleAvatar(
              radius: 75,
              foregroundImage: AssetImage(AppImages.userImage),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: IconButton(
                style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(AppColors.primaryColor),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Divider(),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Text(
                "Name",
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              Material(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                elevation: 20,
                child: customTextForm(
                  type: TextInputType.name,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                "Phone",
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              Material(
                borderRadius: BorderRadius.circular(30),
                elevation: 20,
                color: Colors.white,
                child: customTextForm(
                  type: TextInputType.phone,
                ),
              ),
              const SizedBox(height: 75),
              ElevatedButton(
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.all(15),
                  ),
                  iconColor: WidgetStatePropertyAll(Colors.white),
                  backgroundColor:
                      WidgetStatePropertyAll(AppColors.primaryColor),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.save),
                    const SizedBox(width: 15),
                    Text(
                      "Save Profile",
                      style: Styles.textStyle18.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
