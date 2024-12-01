// ignore_for_file: use_build_context_synchronously

import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:chat_app/features/splash/presentation/view/widgets/splash_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        final user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeView(user: user),
            ),
          );
        } else {
          Navigator.pushReplacementNamed(context, "/signin");
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashBody(),
    );
  }
}
