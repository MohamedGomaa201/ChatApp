import 'package:chat_app/features/chat/presentation/views/widgets/avatr_image.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/name_and_last_msg.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/time_and_number_of_msgs.dart';
import 'package:flutter/material.dart';

class ChatRow extends StatelessWidget {
  final String name;
  final String lastMsg;
  const ChatRow({
    super.key,
    required this.name,
    required this.lastMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AvatarImage(),
        const SizedBox(width: 5),
        NameAndLastMsg(
          name: name,
          lastMsg: lastMsg,
        ),
        const Spacer(),
        const TimeAndNumberOfMsgs(),
      ],
    );
  }
}
