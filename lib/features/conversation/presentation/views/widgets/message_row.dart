import 'package:chat_app/features/conversation/presentation/views/widgets/message_container.dart';
import 'package:flutter/material.dart';

class MessageRow extends StatelessWidget {
  final bool isCurrentUser;
  final Map message;

  const MessageRow({
    super.key,
    required this.isCurrentUser,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
          child: MessageContainer(
            isCurrentUser: isCurrentUser,
            message: message,
          ),
        ),
      ],
    );
  }
}
