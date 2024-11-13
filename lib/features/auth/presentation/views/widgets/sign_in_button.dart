import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/shared%20widgets/custom_button.dart';
import 'package:chat_app/core/themes/app_colors.dart';

class SignInButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> signInFormKey;
  const SignInButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.signInFormKey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: () async {
          //***snackbar validation***//
          // if (!signInFormKey.currentState!.validate()) {
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

          if (signInFormKey.currentState!.validate()) {
            try {
              final credential =
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: emailController.text,
                password: passwordController.text,
              );
              Navigator.pushReplacementNamed(context, "/home");
            } on FirebaseAuthException catch (e) {
              if (e.code == 'user-not-found') {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("No user found for that email."),
                  ),
                );
              } else if (e.code == 'wrong-password') {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Wrong password provided for that user."),
                  ),
                );
              }
            }
          }
        },
        label: "Log In",
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
