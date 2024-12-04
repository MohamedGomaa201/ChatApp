import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'message_bubble_builder.dart';
import 'texting_row.dart';

class ConversationBody extends StatelessWidget {
  final CollectionReference chatsInstance;
  final String docID;
  final String mail;

  const ConversationBody({
    super.key,
    required this.chatsInstance,
    required this.docID,
    required this.mail,
  });

  @override
  Widget build(BuildContext context) {
    final userChatsRef = FirebaseFirestore.instance
        .collection('users')
        .doc(mail)
        .collection('chats');

    return StreamBuilder<DocumentSnapshot>(
      stream: userChatsRef.doc(docID).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          final conversationData =
              snapshot.data!.data() as Map<String, dynamic>;
          final List chatContent = conversationData["msgs"] ?? [];

          return Column(
            children: [
              Expanded(
                child: MessageBubbleBuilder(
                  conversationContent: chatContent,
                  mail: mail,
                ),
              ),
              TextingRow(
                docID: docID,
                chatsInstance: userChatsRef,
                mail: mail,
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Error loading messages"),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
