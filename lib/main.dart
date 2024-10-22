import 'package:chat_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:chat_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:chat_app/features/profile/views/profile_view.dart';
import 'package:chat_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/splash": (context) => const SplashView(),
        "/signin": (context) => const SignInView(),
        "/signup": (context) => const SignUpView(),
        "/home": (context) => const HomeView(),
        "/profile": (context) => const ProfileView(),
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
