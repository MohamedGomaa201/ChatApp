// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:chat_app/features/auth/presentation/views/widgets/register_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/sign_in_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 25.w),
          child: SingleChildScrollView(
            child: Form(
              key: signInFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LogoWidget(),
                  const SignInTitle(),
                  SizedBox(height: 20.h),
                  EmailField(emailController: emailController),
                  SizedBox(height: 20.h),
                  PasswordField(
                    passwordController: passwordController,
                    isVisible: isVisible,
                    toggleVisibility: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                  SizedBox(height: 50.h),
                  SignInButton(
                    signInFormKey: signInFormKey,
                    emailController: emailController,
                    passwordController: passwordController,
                    onSuccess: () async {
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                        Navigator.pushReplacementNamed(context, "/home");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("This email not registered yet"),
                            ),
                          );
                        } else if (e.code == 'wrong-password') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text(
                                  "Wrong password"),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(
                              content: Text(e.toString()),
                            ),
                          );
                        }
                      } catch (e) {
                        log(e.toString());
                      }
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
