import 'package:chat_app/features/chat/presentation/views/widgets/avatr_image.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/name_and_last_msg.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/time_and_number_of_msgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatRow extends StatelessWidget {
  final String name;
  // final String lastMsg;
  final String avatar;
  const ChatRow({
    super.key,
    required this.name,
    // required this.lastMsg,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AvatarImage(
          avatarLink: avatar,
        ),
        SizedBox(width: 5.w),
        NameAndLastMsg(
          name: name,
          // lastMsg: lastMsg,
        ),
        const Spacer(),
        const TimeAndNumberOfMsgs(),
      ],
    );
  }
}
