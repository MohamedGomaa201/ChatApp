import 'package:chat_app/features/calls/presentation/views/widgets/made_call_row.dart';
import 'package:chat_app/features/calls/presentation/views/widgets/missed_call_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
      children: [
        SizedBox(
          height: 425.h,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return const MissedCallRow();
            },
          ),
        ),
        SizedBox(
          height: 425.h,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return const MadeCallRow();
            },
          ),
        ),
      ],
    );
  }
}
