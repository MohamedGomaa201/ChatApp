import 'package:chat_app/core/shared%20widgets/custom_app_bar.dart';
import 'package:chat_app/features/calls/presentation/views/calls_body.dart';
import 'package:chat_app/features/chat/presentation/views/chat_body.dart';
import 'package:chat_app/features/home/presentation/view/widgets/home_bottom_nav_bar.dart';
import 'package:chat_app/features/home/presentation/view/widgets/home_floating_action_button.dart';
import 'package:chat_app/features/status/presentation/views/status_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  IconData floatingIcon = Icons.message;

  var selectedItem = "";

  final List<Widget> screens = [
    const ChatBody(),
    const StatusBody(),
    const CallsBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        (value) {
          setState(() {
            selectedItem = value.toString();
          });
          if (selectedItem == "/signin" || selectedItem == "/signup") {
            Navigator.pushReplacementNamed(context, value.toString());
          } else {
            Navigator.pushNamed(context, value.toString());
          }
        },
      ),
      body: screens[currentIndex],
      floatingActionButton:
          HomeFloatingActionButton(floatingIcon: floatingIcon),
      bottomNavigationBar: HomeBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          if (currentIndex == 0) {
            floatingIcon = Icons.message;
          } else if (currentIndex == 1) {
            floatingIcon = Icons.add_a_photo_rounded;
          } else {
            floatingIcon = Icons.add_ic_call_rounded;
          }
        },
      ),
    );
  }
}
