import 'package:flutter/material.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account yet?",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/signup");
          },
          child: const Text(
            "Register Now",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
