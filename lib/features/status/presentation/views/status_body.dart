import 'package:chat_app/features/status/presentation/views/widgets/lable.dart';
import 'package:chat_app/features/status/presentation/views/widgets/my_status_row.dart';
import 'package:chat_app/features/status/presentation/views/widgets/not_opened_story_builder.dart';
import 'package:chat_app/features/status/presentation/views/widgets/opened_story_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
      children: const [
        MyStatusRow(),
        Lablel(lablel: "Recent updates"),
        NotOpenedStoryBuilder(),
        Lablel(lablel: "Viewed updates"),
        OpenedStoryBuilder(),
      ],
    );
  }
}
