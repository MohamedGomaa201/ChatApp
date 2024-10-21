import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const HomeBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 0,
      selectedLabelStyle: Styles.selectedBottomNavBar,
      unselectedLabelStyle: Styles.unSelectedBottomNavBar,
      onTap: onTap,
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
