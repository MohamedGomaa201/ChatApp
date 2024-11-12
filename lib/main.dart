import 'package:chat_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:chat_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:chat_app/features/profile/presentation/views/profile_view.dart';
import 'package:chat_app/features/splash/presentation/view/splash_view.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.42857142857144, 867.4285714285714),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
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
      },
    );
  }
}
