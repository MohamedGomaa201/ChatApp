import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class MadeCallLabel extends StatelessWidget {
  const MadeCallLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mohamed Gomaa",
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.call_made,
              color: Colors.green,
            ),
            Text(
              "Octpber 20, 12:31 AM",
              style: Styles.textStyle15.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
