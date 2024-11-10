import 'package:chat_app/features/status/presentation/views/widgets/opened_story_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpenedStoryBuilder extends StatelessWidget {
  const OpenedStoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 440.h,
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
