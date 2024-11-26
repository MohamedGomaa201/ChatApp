import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/features/chat/presentation/chat_model.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/chat_row.dart';
import 'package:chat_app/features/conversation/presentation/views/conversation_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});
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
              Padding(
                padding: EdgeInsets.only(right: 15.w, left: 12.w),
                child: Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: chats.length,
                    itemBuilder: (context, index) {
                      final name = snapshot.data!.docs[index]["name"];
                      final avatar = snapshot.data!.docs[index]["image"];
                      final List chatContent =
                          snapshot.data!.docs[index]["msgs"];
                      return GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConversationView(
                              docID: snapshot.data!.docs[index].id,
                              name: name,
                              image: avatar,
                              chatContent: chatContent,
                              chatsInstance: chatsInstance,
                            ),
                          ),
                        ),
                        child: ChatRow(
                          name: name,
                          avatar: avatar,
                          lastMsg: chatContent.last["txt"],
                        ),
                      );
                    },
                  ),
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
