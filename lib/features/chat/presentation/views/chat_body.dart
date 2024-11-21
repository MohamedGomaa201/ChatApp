import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/features/chat/presentation/chat_model.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/chat_row.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});
  @override
  Widget build(BuildContext context) {
    CollectionReference chats = FirebaseFirestore.instance.collection('chats');
    return FutureBuilder<QuerySnapshot>(
      future: chats.get(),
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
              Padding(
                padding: EdgeInsets.only(right: 15.w),
                ////* Stoped Here *////
                /// error not solved///
                /// ep. 284 tharwat samy
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    final name = snapshot.data!.docs[0]["name"];
                    final avatar = snapshot.data!.docs[0]["image"];
                    return ChatRow(name: name, avatar: avatar);
                  },
                ),
                // children: chatData.entries.map((data) {
                //   final name = snapshot.data!.docs[0]["name"];
                //   final avatar = snapshot.data!.docs[0]["image"];
                //   final lastMsg = data.value[0]['msg'];
                //   return GestureDetector(
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) =>
                //               ConversationView(name: name, image: avatar),
                //         ),
                //       );
                //     },
                //     child: ChatRow(
                //       name: name,
                //       lastMsg: lastMsg!,
                //       avatar: avatar,
                //     ),
                //   );
                // }).toList(),
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
