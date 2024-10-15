import 'package:chat_app/core/shared%20widgets/custom_button.dart';
import 'package:chat_app/core/shared%20widgets/custom_snack_bar.dart';
import 'package:chat_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function onSuccess;
  const SignInButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          if (emailController.text.isEmpty) {
            return CustomSnackBar.show(context, "Email can't be empty");
          } else if (!emailController.text.contains("@")) {
            return CustomSnackBar.show(context, "Email isn't valid");
          } else if (passwordController.text.isEmpty) {
            return CustomSnackBar.show(context, "Password can't be empty");
          } else if (passwordController.text.length < 8) {
            return CustomSnackBar.show(
                context, "Password must be more than 8 characters");
          } else {
            onSuccess();
          }
        },
        label: "Log In",
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
