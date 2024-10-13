import 'package:chat_app/core/shared%20widgets/default_text_form.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;
  const EmailField({super.key, required this.emailController});
  @override
  Widget build(BuildContext context) {
    return defaultTextForm(
      type: TextInputType.emailAddress,
      controller: emailController,
      label: "Enter Your Email",
      hint: "Your Email",
      prefix: Icons.email_outlined,
      validate: (value) {
        if (value.isEmpty) {
          return "Email can't be empty";
        } else {
          return null;
        }
      },
    );
  }
}
