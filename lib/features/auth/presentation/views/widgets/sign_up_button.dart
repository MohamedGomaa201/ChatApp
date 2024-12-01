import 'package:flutter/material.dart';
import 'package:chat_app/core/shared%20widgets/custom_button.dart';
import 'package:chat_app/core/themes/app_colors.dart';

class SignUpButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final Function onSuccess;
  final GlobalKey<FormState> signUpFormKey;
  const SignUpButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.phoneController,
    required this.onSuccess,
    required this.signUpFormKey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () {
          if (signUpFormKey.currentState!.validate()) {
            onSuccess();
          }
        },
        label: "Sign Up",
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
