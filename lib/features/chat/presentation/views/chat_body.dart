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
      stream: chatsInstance.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ChatModel> chats = [];
          for (var i = 0; i < snapshot.data!.docs.length; i++) {
            chats.add(
              ChatModel.fromJson(snapshot.data!.docs[i]),
            );
          }
          return Column(
            children: [
              const Divider(),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    final name = snapshot.data!.docs[index]["name"];
                    final avatar = snapshot.data!.docs[index]["image"];
                    final List chatContent = snapshot.data!.docs[index]["msgs"];
                    return ChatRow(
                      name: name,
                      avatar: avatar,
                      lastMsg: chatContent.last["txt"],
                      lastMsgTime: chatContent.last["time"],
                      chatContent: chatContent,
                      chatsInstance: chatsInstance,
                      docID: snapshot.data!.docs[index].id,
                      mail: mail,
                    );
                  },
                ),
              ),
            ],
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
