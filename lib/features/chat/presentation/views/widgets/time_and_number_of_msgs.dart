import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class TimeAndNumberOfMsgs extends StatelessWidget {
  const TimeAndNumberOfMsgs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Row(
          children: [
            Text("12:00"),
            SizedBox(width: 5),
            Text("PM"),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              "2",
              style: Styles.textStyle15.copyWith(fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    );
  }
}
