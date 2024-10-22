import 'package:chat_app/features/auth/presentation/views/widgets/register_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/sign_in_title.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({
    super.key,
  });

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = false;
  GlobalKey<FormState> signInFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Form(
              key: signInFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LogoWidget(),
                  const SignInTitle(),
                  const SizedBox(height: 20),
                  EmailField(emailController: emailController),
                  const SizedBox(height: 20),
                  PasswordField(
                    passwordController: passwordController,
                    isVisible: isVisible,
                    toggleVisibility: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                  const SizedBox(height: 50),
                  SignInButton(
                    signInFormKey: signInFormKey,
                    emailController: emailController,
                    passwordController: passwordController,
                    onSuccess: () {
                      Navigator.pushReplacementNamed(context, "/home");
                    },
                  ),
                  const RegisterRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
