import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class MissedCallLabel extends StatelessWidget {
  const MissedCallLabel({
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
            color: Colors.red,
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.call_received,
              color: Colors.red,
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
