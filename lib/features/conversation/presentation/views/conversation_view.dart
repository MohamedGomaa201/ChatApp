import 'package:chat_app/core/constants/app_images.dart';
import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/features/chat/presentation/chat_model.dart';
import 'package:chat_app/features/conversation/presentation/views/widgets/conversation_body.dart';
import 'package:flutter/material.dart';

class ConversationView extends StatelessWidget {
  const ConversationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        actions: const [
          Icon(
            Icons.call_rounded,
            color: Colors.white,
          ),
          Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          ),
        ],
        //// stoped here ////
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset(AppImages.avatar),
            ),

            /// issue not solved ///
            Text("${chatData[0]}"),
          ],
        ),
      ),
      body: const ConversationBody(),
    );
  }
}
