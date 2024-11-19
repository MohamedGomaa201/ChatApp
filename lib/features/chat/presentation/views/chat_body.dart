import 'package:chat_app/features/chat/presentation/chat_model.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/chat_row.dart';
import 'package:chat_app/features/conversation/presentation/views/conversation_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: Column(
            children: chatData.entries.map((data) {
              final name = data.value[0]['name'] ?? 'Unknown';
              final lastMsg = data.value[0]['msg'] ?? 'No message';
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConversationView(name: name),
                      ));
                },
                child: ChatRow(
                  name: name,
                  lastMsg: lastMsg,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
