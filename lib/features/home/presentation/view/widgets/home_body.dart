import 'package:chat_app/features/home/presentation/home_model.dart';
import 'package:chat_app/features/home/presentation/view/widgets/chat_row.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
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
