import 'package:chat_app/core/shared%20widgets/custom_button.dart';
import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final Function onSuccess;
  const SignUpButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.phoneController,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        // to be continued...
      },
      label: "Sign Up",
      backgroundColor: AppColors.primaryColor,
    );
  }
}
