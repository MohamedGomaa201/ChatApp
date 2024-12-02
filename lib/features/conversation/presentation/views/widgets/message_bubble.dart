import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class MessageBubble extends StatelessWidget {
  final String mail;
  const MessageBubble({
    super.key,
    required this.conversationContent,
    required this.mail,
  });

  final List conversationContent;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: conversationContent.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            mainAxisAlignment: conversationContent[index]["id"] == mail
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  decoration: conversationContent[index]["id"] == mail
                      ? const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          color: AppColors.secondaryColor,
                        )
                      : const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          color: Colors.white,
                        ),
                  padding: const EdgeInsets.all(8),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Text(
                            conversationContent[index]["txt"],
                            style: Styles.textStyle16
                                .copyWith(color: Colors.black),
                          ),
                        ),
                        WidgetSpan(child: SizedBox(width: 15.w)),
                        TextSpan(
                          text: DateFormat('h:mm a').format(
                              conversationContent[index]["time"].toDate()),
                          style: Styles.textStyle15.copyWith(
                            fontSize: 13,
                            color: conversationContent[index]["id"] == mail
                                ? Colors.grey.shade700
                                : Colors.grey,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
