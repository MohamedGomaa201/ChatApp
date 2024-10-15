// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:chat_app/core/shared%20widgets/custom_button.dart';
import 'package:chat_app/core/shared%20widgets/custom_snack_bar.dart';
import 'package:chat_app/core/themes/app_colors.dart';

class SignInButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function onSuccess;
  final GlobalKey<FormState> signInFormKey;
  const SignInButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onSuccess,
    required this.signInFormKey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          if (!signInFormKey.currentState!.validate()) {
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
              return CustomSnackBar.show(context, "There an error try again");
            }
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
