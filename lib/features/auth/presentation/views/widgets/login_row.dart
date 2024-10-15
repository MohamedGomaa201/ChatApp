import 'package:chat_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:flutter/material.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account?",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInView(),
              ),
            );
          },
          child: const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
