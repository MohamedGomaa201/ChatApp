import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.conversationContent,
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
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(8),
                child: Text(
                  conversationContent[index]["txt"],
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
