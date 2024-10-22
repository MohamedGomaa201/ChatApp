import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(onSelect) {
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
          return const [
            PopupMenuItem(
              value: '/profile',
              child: Row(
                children: [
                  Icon(Icons.person_outline),
                  SizedBox(width: 10),
                  Text("Profile"),
                ],
              ),
            ),
            PopupMenuItem(
              value: '/settings',
              child: Row(
                children: [
                  Icon(Icons.settings_outlined),
                  SizedBox(width: 10),
                  Text("Settings"),
                ],
              ),
            ),
            PopupMenuItem(
              value: '/signin',
              child: Row(
                children: [
                  Icon(Icons.logout_outlined),
                  SizedBox(width: 10),
                  Text("Logout"),
                ],
              ),
            ),
          ];
        },
      ),
    ],
  );
}
