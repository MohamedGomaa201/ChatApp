import 'package:chat_app/core/shared%20widgets/user_avatar.dart';
import 'package:chat_app/features/calls/presentation/views/widgets/call_button.dart';
import 'package:chat_app/features/calls/presentation/views/widgets/made_call_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MadeCallRow extends StatelessWidget {
  const MadeCallRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Row(
        children: [
          const UserAvatar(),
          SizedBox(width: 15.w),
          const MadeCallLabel(),
          const Spacer(),
          const CallButton(),
        ],
      ),
    );
  }
}
