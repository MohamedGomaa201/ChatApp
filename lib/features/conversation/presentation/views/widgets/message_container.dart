import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/features/conversation/presentation/views/widgets/message_content.dart';
import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  final bool isCurrentUser;
  final Map message;

  const MessageContainer({
    super.key,
    required this.isCurrentUser,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isCurrentUser ? 12 : 0),
          topRight: Radius.circular(isCurrentUser ? 0 : 12),
          bottomLeft: const Radius.circular(12),
          bottomRight: const Radius.circular(12),
        ),
        color: isCurrentUser ? AppColors.secondaryColor : Colors.white,
      ),
      padding: const EdgeInsets.all(8),
      child: MessageContent(
        text: message["txt"],
        time: message["time"],
        isCurrentUser: isCurrentUser,
      ),
    );
  }
}
