import 'package:chat_app/features/chat/views/widgets/chat_body.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatBody(),
    );
  }
}
