import 'package:chat_app/features/home/views/views%20files/home_screen.dart';
import 'package:chat_app/features/splash/widgets%20files/logo_image.dart';
import 'package:chat_app/features/splash/widgets%20files/text_of_end_the_screen.dart';
import 'package:chat_app/features/splash/widgets%20files/text_under_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Spacer(flex: 2),
          LogoImage(),
          SizedBox(height: 8),
          TextUnderLogo(),
          Spacer(flex: 1),
          TextOfEndTheScreen(),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
