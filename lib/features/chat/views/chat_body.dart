import 'package:chat_app/features/chat/chat_model.dart';
import 'package:chat_app/features/chat/views/widgets/chat_row.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            children: chatData.entries.map((data) {
              final name = data.value[0]['name'] ?? 'Unknown';
              final lastMsg = data.value[0]['msg'] ?? 'No message';
              return ChatRow(
                name: name,
                lastMsg: lastMsg,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
