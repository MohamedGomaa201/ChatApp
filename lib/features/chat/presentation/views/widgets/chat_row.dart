import 'package:chat_app/features/chat/presentation/views/widgets/avatr_image.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/name_and_last_msg.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/time_and_number_of_msgs.dart';
import 'package:chat_app/features/conversation/presentation/views/conversation_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatRow extends StatelessWidget {
  final String name;
  final String lastMsg;
  final String avatar;
  final Timestamp lastMsgTime;
  final List chatContent;
  final CollectionReference chatsInstance;
  final String docID;
  const ChatRow({
    super.key,
    required this.name,
    required this.lastMsg,
    required this.avatar,
    required this.lastMsgTime,
    required this.chatContent,
    required this.chatsInstance,
    required this.docID,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConversationView(
              name: name,
              image: avatar,
              chatContent: chatContent,
              chatsInstance: chatsInstance,
              docID: docID,
            ),
          ),
        );
      },
      child: Padding(
        padding:
            EdgeInsets.only(bottom: 7.w, top: 7.w, right: 15.w, left: 12.w),
        child: Row(
          children: [
            AvatarImage(avatarLink: avatar),
            SizedBox(width: 10.w),
            Expanded(
              child: NameAndLastMsg(
                lastMsg: lastMsg,
                name: name,
              ),
            ),
            // const Spacer(),
            TimeAndNumberOfMsgs(
              lastMsgTime: lastMsgTime,
            ),
          ],
        ),
      ),
    );
  }
}
