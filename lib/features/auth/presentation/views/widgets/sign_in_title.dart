import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SignInTitle extends StatelessWidget {
  const SignInTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Log in to your account",
      style: Styles.textStyle24,
    );
  }
}
