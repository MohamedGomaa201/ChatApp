import 'package:chat_app/core/shared%20widgets/custom_text_form.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  final String lable;
  const ProfileTextField({
    super.key,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          lable,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5),
        Material(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          elevation: 20,
          child: customTextForm(
            type: TextInputType.name,
          ),
        ),
      ],
    );
  }
}
