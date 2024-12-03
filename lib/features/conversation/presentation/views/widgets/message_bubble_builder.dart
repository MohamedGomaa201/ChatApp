import 'package:chat_app/features/conversation/presentation/views/widgets/message_row.dart';
import 'package:flutter/material.dart';

class MessageBubbleBuilder extends StatelessWidget {
  final String mail;
  final List conversationContent;

  const MessageBubbleBuilder({
    super.key,
    required this.conversationContent,
    required this.mail,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: conversationContent.length,
      itemBuilder: (context, index) {
        final message = conversationContent[index];
        final isCurrentUser = message["id"] == mail;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: MessageRow(
            isCurrentUser: isCurrentUser,
            message: message,
          ),
        );
      },
    );
  }
}
