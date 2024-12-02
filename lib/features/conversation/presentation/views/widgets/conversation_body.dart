import 'package:chat_app/features/conversation/presentation/views/widgets/message_bubble.dart';
import 'package:chat_app/features/conversation/presentation/views/widgets/texting_row.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ConversationBody extends StatelessWidget {
  final List conversationContent;
  final CollectionReference chatsInstance;
  final String docID;
  final String mail;
  const ConversationBody(
      {super.key,
      required this.conversationContent,
      required this.chatsInstance,
      required this.docID,
      required this.mail});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: MessageBubble(
            conversationContent: conversationContent,
            mail: mail,
          ),
        ),
        TextingRow(
          docID: docID,
          chatsInstance: chatsInstance,
          mail: mail,
        ),
      ],
    );
  }
}
