import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class MessageContent extends StatelessWidget {
  final String text;
  final dynamic time;
  final bool isCurrentUser;

  const MessageContent({
    super.key,
    required this.text,
    required this.time,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              text,
              style: Styles.textStyle16.copyWith(color: Colors.black),
            ),
          ),
          WidgetSpan(child: SizedBox(width: 15.w)),
          TextSpan(
            text: DateFormat('h:mm a').format(time.toDate()),
            style: Styles.textStyle15.copyWith(
              fontSize: 13,
              color: isCurrentUser ? Colors.grey.shade700 : Colors.grey,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
      style: TextStyle(fontSize: 16.sp),
    );
  }
}
