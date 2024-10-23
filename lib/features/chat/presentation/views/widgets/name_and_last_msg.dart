import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class NameAndLastMsg extends StatelessWidget {
  final String name;
  final String lastMsg;
  const NameAndLastMsg({
    super.key,
    required this.name,
    required this.lastMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          lastMsg,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
