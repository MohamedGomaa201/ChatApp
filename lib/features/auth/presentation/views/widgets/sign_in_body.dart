import 'package:chat_app/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/sign_in_title.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Column(
          children: [
            LogoWidget(),
            SignInTitle(),
          ],
        ),
      ),
    );
  }
}
