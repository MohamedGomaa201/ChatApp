import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/features/chat/presentation/chat_model.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/chat_row.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  final String mail;
  const ChatBody({super.key, required this.mail});

  @override
  Widget build(BuildContext context) {
    CollectionReference chatsInstance =
        FirebaseFirestore.instance.collection('chats');

    return StreamBuilder<QuerySnapshot>(
      stream: chatsInstance
          .orderBy('lastMesaageTime', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ChatModel> chats = snapshot.data!.docs
              .map((doc) => ChatModel.fromJson(doc))
              .toList();

          return Column(
            children: [
              const Divider(),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    final chatDoc = snapshot.data!.docs[index];
                    final name = chatDoc["name"];
                    final avatar = chatDoc["image"];
                    final List chatContent = chatDoc["msgs"];
                    return ChatRow(
                      name: name,
                      avatar: avatar,
                      lastMsg: chatContent.last["txt"],
                      lastMsgTime: chatContent.last["time"],
                      chatContent: chatContent,
                      chatsInstance: chatsInstance,
                      docID: chatDoc.id,
                      mail: mail,
                    );
                  },
                ),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Error loading chats"),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }
      },
    );
  }
}
