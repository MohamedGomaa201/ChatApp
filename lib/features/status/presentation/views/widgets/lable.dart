import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class Lablel extends StatelessWidget {
  final String lablel;
  const Lablel({
    super.key,
    required this.lablel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 15),
      child: Text(
        lablel,
        style: Styles.textStyle15.copyWith(
          color: Colors.grey,
        ),
      ),
    );
  }
}
