import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class AvatarLabel extends StatelessWidget {
  final String firstLable;
  final String secondLable;
  const AvatarLabel({
    super.key,
    required this.firstLable,
    required this.secondLable,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          firstLable,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          secondLable,
          style: Styles.textStyle15.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
