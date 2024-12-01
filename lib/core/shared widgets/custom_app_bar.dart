import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/profile/presentation/views/profile_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

PreferredSizeWidget customAppBar(onSelect, user) {
  return AppBar(
    title: Text(
      "WhatsUp",
      style: Styles.textStyle28,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search_rounded),
      ),
      PopupMenuButton(
        position: PopupMenuPosition.under,
        color: Colors.white,
        onSelected: onSelect,
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileView(
                      user: user,
                    ),
                  ),
                );
              },
              value: '/profile',
              child: Row(
                children: [
                  const Icon(Icons.person_outline),
                  SizedBox(width: 10.w),
                  const Text("Profile"),
                ],
              ),
            ),
            PopupMenuItem(
              child: Row(
                children: [
                  const Icon(Icons.settings_outlined),
                  SizedBox(width: 10.w),
                  const Text("Settings"),
                ],
              ),
            ),
            PopupMenuItem(
              value: '/signin',
              child: Row(
                children: [
                  const Icon(Icons.logout_outlined),
                  SizedBox(width: 10.w),
                  const Text("Logout"),
                ],
              ),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
              },
            ),
          ];
        },
      ),
    ],
  );
}
