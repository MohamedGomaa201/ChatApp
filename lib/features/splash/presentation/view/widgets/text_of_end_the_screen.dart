import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class TextOfEndTheScreen extends StatelessWidget {
  const TextOfEndTheScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "The best chat app of this century",
      style: Styles.textStyle18,
    );
  }
}
