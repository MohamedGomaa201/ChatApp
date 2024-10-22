import 'package:chat_app/core/shared%20widgets/user_avatar.dart';
import 'package:chat_app/features/calls/views/widgets/call_button.dart';
import 'package:chat_app/features/calls/views/widgets/missed_call_label.dart';
import 'package:flutter/material.dart';

class MissedCallRow extends StatelessWidget {
  const MissedCallRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          UserAvatar(),
          SizedBox(width: 15),
          MissedCallLabel(),
          Spacer(),
          CallButton(),
        ],
      ),
    );
  }
}
