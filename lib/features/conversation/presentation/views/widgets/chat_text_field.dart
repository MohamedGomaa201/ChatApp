import 'package:chat_app/features/conversation/presentation/views/widgets/text_field_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFieldIcon(
              onTap: () {},
              icon: Icons.emoji_emotions_outlined,
            ),
            Expanded(
              child: TextFormField(
                controller: controller,
                minLines: 1,
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: "Type a message",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            TextFieldIcon(onTap: () {}, icon: Icons.link_outlined),
            TextFieldIcon(onTap: () {}, icon: Icons.camera_alt_rounded),
          ],
        ),
      ),
    );
  }
}
