import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/conversation/presentation/views/widgets/conversation_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConversationView extends StatelessWidget {
  final String name;
  final String image;
  const ConversationView({
    super.key,
    required this.name,
    required this.image,
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
              backgroundColor: Colors.transparent,
              radius: 25.w,
              child: Image.network(image),
            ),
            SizedBox(width: 5.w),
            Text(
              name,
              style: Styles.textStyle18,
            ),
          ],
        ),
      ),
      body: const ConversationBody(),
    );
  }
}
