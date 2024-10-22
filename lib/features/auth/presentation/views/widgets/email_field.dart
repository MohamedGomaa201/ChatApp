import 'package:chat_app/core/shared%20widgets/custom_text_form.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;
  const EmailField({super.key, required this.emailController});
  @override
  Widget build(BuildContext context) {
    return customTextForm(
      type: TextInputType.emailAddress,
      controller: emailController,
      hint: "Enter Your Email",
      label: "Email",
      prefix: Icons.email_outlined,
      validate: (value) {
        if (value.isEmpty) {
          return "Email can't be empty";
        } else if (!value.contains("@")) {
          return "Email isn't valid";
        } else {
          return null;
        }
      },
    );
  }
}
