import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/profile_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  final User user;
  const ProfileView({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile", style: Styles.textStyle28)),
      body: ProfileBody(user: user),
    );
  }
}
