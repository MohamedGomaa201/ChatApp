import 'package:chat_app/features/conversation/presentation/views/widgets/chat_text_field.dart';
import 'package:chat_app/features/conversation/presentation/views/widgets/mic_icon.dart';
import 'package:flutter/material.dart';

class TextingRow extends StatelessWidget {
  const TextingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ChatTextField(),
        MicIcon(),
      ],
    );
  }
}
