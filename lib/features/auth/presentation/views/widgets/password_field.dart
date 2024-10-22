import 'package:flutter/material.dart';
import 'package:chat_app/core/shared%20widgets/custom_text_form.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final bool isVisible;
  final VoidCallback toggleVisibility;
  const PasswordField({
    super.key,
    required this.passwordController,
    required this.isVisible,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return customTextForm(
      type: TextInputType.visiblePassword,
      controller: passwordController,
      label: "Password",
      hint: "Enter Your Password",
      prefix: Icons.lock_outline,
      isObscure: !isVisible,
      suffix:
          isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
      suffixIconPressed: toggleVisibility,
      validate: (value) {
        if (value.isEmpty) {
          return "Please enter the password";
        } else if (value.toString().length < 8) {
          return "Password should be more than 8 character";
        } else {
          return null;
        }
      },
    );
  }
}
