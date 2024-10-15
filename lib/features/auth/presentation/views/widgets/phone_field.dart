import 'package:chat_app/core/shared%20widgets/custom_text_form.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController phoneController;
  const PhoneField({
    super.key,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return customTextForm(
      type: TextInputType.phone,
      controller: phoneController,
      prefix: Icons.phone_android_outlined,
      hint: "Enter your phone number",
      label: "Phone Number",
      validate: (value) {
        if (value.isEmpty) {
          return "Phone number can't be empty";
        } else {
          return null;
        }
      },
    );
  }
}
