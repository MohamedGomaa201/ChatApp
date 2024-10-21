import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/name_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/sign_up_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/sign_up_title.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:chat_app/features/splash/presentation/view/widgets/logo_image.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = false;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Form(
              key: signUpFormKey,
              child: Column(
                children: [
                  const LogoImage(),
                  const SignUpTitle(),
                  const SizedBox(height: 20),
                  NameField(nameController: nameController),
                  const SizedBox(height: 10),
                  EmailField(emailController: emailController),
                  const SizedBox(height: 10),
                  PhoneField(phoneController: phoneController),
                  const SizedBox(height: 10),
                  PasswordField(
                    passwordController: passwordController,
                    isVisible: isVisible,
                    toggleVisibility: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  SignUpButton(
                    signUpFormKey: signUpFormKey,
                    emailController: emailController,
                    nameController: nameController,
                    passwordController: passwordController,
                    phoneController: phoneController,
                    onSuccess: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                  ),
                  const LoginRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
