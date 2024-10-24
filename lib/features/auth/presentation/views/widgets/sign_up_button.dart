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
          //***snackbar validation***//
          // if (!signUpFormKey.currentState!.validate()) {
          //   if (emailController.text.isEmpty) {
          //     return CustomSnackBar.show(context, "Email can't be empty");
          //   } else if (!emailController.text.contains("@")) {
          //     return CustomSnackBar.show(context, "Email isn't valid");
          //   } else if (passwordController.text.isEmpty) {
          //     return CustomSnackBar.show(context, "Password can't be empty");
          //   } else if (passwordController.text.length < 8) {
          //     return CustomSnackBar.show(
          //         context, "Password must be more than 8 characters");
          //   } else {
          //     return CustomSnackBar.show(context, "There an error try again");
          //   }
          // } else {
          //   onSuccess();
          // }
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
