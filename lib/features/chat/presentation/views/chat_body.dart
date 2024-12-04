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
    final String currentUserEmail = mail;
    CollectionReference userChatsInstance = FirebaseFirestore.instance
        .collection('users')
        .doc(currentUserEmail)
        .collection('chats');

    return StreamBuilder<QuerySnapshot>(
      stream: userChatsInstance.orderBy('lastMesaageTime').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: CircularProgressIndicator(color: AppColors.primaryColor));
        } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text('No chats available'));
        } else if (snapshot.hasData) {
          List<ChatModel> chats = snapshot.data!.docs
              .map((doc) => ChatModel.fromJson(doc))
              .toList();
          return ListView.builder(
            shrinkWrap: true,
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final chatDoc = snapshot.data!.docs[index];
              final name = chatDoc['name'];
              final avatar = chatDoc['image'];
              final List chatContent = chatDoc['msgs'];
              return ChatRow(
                name: name,
                avatar: avatar,
                lastMsg: chatContent.last['txt'],
                lastMsgTime: chatContent.last['time'],
                chatContent: chatContent,
                chatsInstance: userChatsInstance,
                docID: chatDoc.id,
                mail: mail,
              );
            },
          );
        } else {
          return const Center(child: Text('Something went wrong'));
        }
      },
    );
  }
}
