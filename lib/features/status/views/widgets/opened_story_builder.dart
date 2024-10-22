import 'package:chat_app/features/status/views/widgets/opened_story_row.dart';
import 'package:flutter/material.dart';

class OpenedStoryBuilder extends StatelessWidget {
  const OpenedStoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 440,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const OpenedStoryRow();
        },
      ),
    );
  }
}
