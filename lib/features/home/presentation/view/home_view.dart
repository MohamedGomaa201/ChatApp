import 'package:chat_app/features/calls/views/widgets/calls_body.dart';
import 'package:chat_app/features/chat/views/widgets/chat_body.dart';
import 'package:chat_app/features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:chat_app/features/home/presentation/view/widgets/home_bottom_nav_bar.dart';
import 'package:chat_app/features/home/presentation/view/widgets/home_floating_action_button.dart';
import 'package:chat_app/features/status/views/widgets/status_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final int currentIndex = 0;

  final List<Widget> screens = [
    const ChatBody(),
    const StatusBody(),
    const CallsBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(appBar: AppBar()),
      body: screens[currentIndex],
      floatingActionButton: const HomeFloatingActionButton(),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
