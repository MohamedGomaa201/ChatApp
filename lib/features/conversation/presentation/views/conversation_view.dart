import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/conversation/presentation/views/widgets/conversation_body.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConversationView extends StatelessWidget {
  final String name;
  final String image;
  final String docID;
  final String mail;
  final List chatContent;
  final CollectionReference chatsInstance;
  const ConversationView({
    super.key,
    required this.name,
    required this.image,
    required this.chatContent,
    required this.chatsInstance,
    required this.docID,
    required this.mail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 224, 213, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          const Icon(
            Icons.call_rounded,
          ),
          SizedBox(width: 15.w),
          const Icon(
            Icons.more_vert_rounded,
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(image),
              backgroundColor: Colors.transparent,
              radius: 25.w,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                name,
                style: Styles.textStyle18,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      body: ConversationBody(
        docID: docID,
        chatsInstance: chatsInstance,
        mail: mail,
      ),
    );
  }
}
