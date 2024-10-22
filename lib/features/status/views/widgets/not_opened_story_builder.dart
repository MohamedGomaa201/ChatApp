import 'package:chat_app/features/status/views/widgets/not_opened_story_row.dart';
import 'package:flutter/material.dart';

class NotOpenedStoryBuilder extends StatelessWidget {
  const NotOpenedStoryBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const NotOpenedStoryRow();
        },
      ),
    );
  }
}
