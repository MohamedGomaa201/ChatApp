import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/calls/views/widgets/calls_body.dart';
import 'package:chat_app/features/chat/views/widgets/chat_body.dart';
import 'package:chat_app/features/status/views/widgets/status_body.dart';
import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatefulWidget {
  const HomeBottomNavBar({super.key});

  @override
  State<HomeBottomNavBar> createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 0,
      selectedLabelStyle: Styles.selectedBottomNavBar,
      unselectedLabelStyle: Styles.unSelectedBottomNavBar,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
            color: AppColors.primaryColor,
          ),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.lightbulb_sharp,
            color: AppColors.primaryColor,
          ),
          label: "Status",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.call_rounded,
            color: AppColors.primaryColor,
          ),
          label: "Calls",
        ),
      ],
    );
  }
}
