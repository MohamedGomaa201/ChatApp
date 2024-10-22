import 'package:chat_app/features/calls/views/widgets/made_call_row.dart';
import 'package:chat_app/features/calls/views/widgets/missed_call_row.dart';
import 'package:flutter/material.dart';

class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        SizedBox(
          height: 425,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return const MissedCallRow();
            },
          ),
        ),
        SizedBox(
          height: 425,
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
