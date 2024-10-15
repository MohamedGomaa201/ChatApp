import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Register To New Account",
      style: Styles.textStyle24,
    );
  }
}
