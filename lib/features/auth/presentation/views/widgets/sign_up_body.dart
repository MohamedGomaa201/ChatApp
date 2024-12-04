// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/name_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/sign_up_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/sign_up_title.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:chat_app/features/splash/presentation/view/widgets/logo_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 25.w),
          child: SingleChildScrollView(
            child: Form(
              key: signUpFormKey,
              child: Column(
                children: [
                  const LogoImage(),
                  const SignUpTitle(),
                  SizedBox(height: 20.h),
                  NameField(nameController: nameController),
                  SizedBox(height: 10.h),
                  EmailField(emailController: emailController),
                  SizedBox(height: 10.h),
                  PhoneField(phoneController: phoneController),
                  SizedBox(height: 10.h),
                  PasswordField(
                    passwordController: passwordController,
                    isVisible: isVisible,
                    toggleVisibility: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                  SizedBox(height: 20.h),
                  SignUpButton(
                    signUpFormKey: signUpFormKey,
                    emailController: emailController,
                    nameController: nameController,
                    passwordController: passwordController,
                    phoneController: phoneController,
                    onSuccess: () async {
                      try {
                        UserCredential user = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                        user.user!.updateDisplayName(nameController.text);
                        CollectionReference usersRef =
                            FirebaseFirestore.instance.collection('users');
                        await usersRef.doc(user.user!.email).set({
                          "name": nameController.text,
                          "mail": emailController.text,
                          "phone": phoneController.text,
                          "id": user.user!.uid,
                        });

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeView(user: user.user!),
                            ));
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("The password is too weak"),
                            ),
                          );
                        } else if (e.code == 'email-already-in-use') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("The email already registered"),
                            ),
                          );
                        }
                      } catch (e) {
                        log(e.toString());
                      }
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
