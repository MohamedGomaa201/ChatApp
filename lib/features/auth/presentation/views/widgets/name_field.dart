import 'package:chat_app/core/shared%20widgets/custom_text_form.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final TextEditingController nameController;
  const NameField({
    super.key,
    required this.nameController,
  });

  @override
  Widget build(BuildContext context) {
    return customTextForm(
      type: TextInputType.name,
      controller: nameController,
      prefix: Icons.person_outline,
      hint: "Enter your full name",
      label: "Full Name",
      validate: (value) {
        if (value.isEmpty) {
          return "Please enter your name";
        } else {
          return null;
        }
      },
    );
  }
}
