import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class NameAndLastMsg extends StatelessWidget {
  final String name;
  final String lastMsg;
  const NameAndLastMsg({super.key, required this.name, required this.lastMsg});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w700),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return Text(
              lastMsg,
              style: Styles.textStyle15.copyWith(
                color: const Color(0xFF608190),
                fontWeight: FontWeight.normal,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1, // Ellipsis applies here
            );
          },
        ),
      ],
    );
  }
}
